import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_bloc/application/bloc/category_bloc_bloc.dart';
import 'dart:developer';

import 'widgets/discoverwidget.dart';
import 'widgets/product_row.dart';
import 'widgets/widgetcategories.dart';
import 'widgets/widgetoffercard.dart';
import 'widgets/widgetsearchexitbutton.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<CategoryBlocBloc>(context)
          .add(const CategoryBlocEvent.started());
    });
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  WidgetOneDiscover(constraints: constraints),
                  WidgetSearchExitButtons(
                    constraints: constraints,
                  ),
                ],
              ),
              const SizedBox(height: 20),
               BlocBuilder<CategoryBlocBloc, CategoryBlocState>(
                builder: (context, state) {
                  log(state.listCate.toString());
                  
                 return
                    WidgetCategories(catList: state.listCate,);
                },
              ),
              const SizedBox(height: 20),
              const WidgetOfferCard(),
              const SizedBox(height: 20),
              const ProductsRow(tittle: "Best Products"),
              const SizedBox(height: 20),
              const ProductsRow(tittle: "Best Quality"),
              const SizedBox(height: 20),
            ],
          ),
        );
      }),
    );
  }
}

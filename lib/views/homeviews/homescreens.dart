import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_bloc/application/best_products/best_products_bloc.dart';
import 'package:shopping_bloc/application/electronics/electronics_bloc.dart';
import 'dart:developer';

import '../../application/category/category_bloc_bloc.dart';
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

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<BestProductsBloc>(context)
          .add(BestProductsEvent.getBestProducts());

          BlocProvider.of<ElectronicsBloc>(context)
          .add(const ElectronicsEvent.getElectronics());
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

                  return WidgetCategories(
                    catList: state.listCate,
                  );
                },
              ),
              const SizedBox(height: 20),
              const WidgetOfferCard(),
              const SizedBox(height: 20),
              BlocBuilder<BestProductsBloc, BestProductsState>(
                builder: (context, state) {
                  log(state.toString());
                  return ProductsRow(
                    tittle: "Best Products",
                    bestProductsState: state,
                  );
                },
              ),
              const SizedBox(height: 20),
               BlocBuilder<ElectronicsBloc, ElectronicsState>(
                builder: (context, state) {
                  return  ProductsRow(
                    tittle: "Electronics",
                    bestProductsState: state,
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      }),
    );
  }
}

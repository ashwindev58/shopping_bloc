import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/product/product_bloc.dart';
import 'widgets/discoverwidget.dart';
import 'widgets/product_row.dart';
import 'widgets/widgetcategories.dart';
import 'widgets/widgetoffercard.dart';
import 'widgets/widgetsearchexitbutton.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
                log("state : ::::: $state");
                return const WidgetCategories();
              }),
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

import 'dart:developer';
import 'dart:ui';

import 'package:blinking_text/blinking_text.dart';
import 'package:flutter/material.dart';

import '../product_list/common_product_lis.dart';
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
              const WidgetCategories(),
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

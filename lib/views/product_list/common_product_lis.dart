import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_bloc/application/search_product/search_bloc_bloc.dart';

import '../../application/Category/category_bloc_bloc.dart';
import 'widget/widgetproductcard.dart';
import 'widget/widgetqsearcharea.dart';


class ProductSearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  final List<String> _products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
    'Product 6',
  ];

  ProductSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBlocBloc>(context)
          .add(const SearchBlocEvent.searchProduct());
    });

    return Scaffold(
      body: Column(
        children: [
          WidgetSearchArea(searchController: _searchController),
          ResultArea(products: _products),
        ],
      ),
    );
  }
}

class ResultArea extends StatelessWidget {
  const ResultArea({
    super.key,
    required List<String> products,
  }) : _products = products;

  final List<String> _products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth > 600 ? 3 : 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.75,
            ),
            itemCount: _products.length,
            itemBuilder: (context, index) {
              return ProductCard(productName: _products[index]);
            },
          );
        },
      ),
    );
  }
}

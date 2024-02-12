import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_bloc/application/search_product/search_bloc_bloc.dart';
import 'package:shopping_bloc/models/product/model_product.dart';

import '../../main.dart';
import 'widget/shimmmer_result_area.dart';
import 'widget/widgetproductcard.dart';
import 'widget/widgetqsearcharea.dart';

class ProductSearchScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();



  final String currentCategory;

  ProductSearchScreen({super.key, required this.currentCategory});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SearchBlocBloc>(context).add(
          SearchBlocEvent.searchProduct(
              category: currentCategory, searchkey: ""));
    });

    return Scaffold(
      body: Column(
        children: [
          WidgetSearchArea(searchController: _searchController),
          BlocBuilder<SearchBlocBloc, SearchBlocState>(
            builder: (context, state) {
              log("---------------------------------- ${state.searchList}");

              if(state.isLoading)
              return const ShimerArea();
              else
              return ResultArea(products: state.searchList);
            },
          ),
        ],
      ),
    );
  }
}

class ResultArea extends StatelessWidget {
  const ResultArea({
    super.key,
    required List<ModelProductData> products,
  }) : _products = products;

  final List<ModelProductData> _products;

  @override
  Widget build(BuildContext context) {
    if(_products.isEmpty) {
      return  Column(
        children: [
          SizedBox(height: globalConstraints.maxWidth*0.2,),
          Center(child: Text("No Result Found"),),
        ],
      );
    } else {
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
              return ProductCard(data: _products[index]);
            },
          );
        },
      ),
    );
    }
  }
}

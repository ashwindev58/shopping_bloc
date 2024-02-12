import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/best_products/best_products_bloc.dart';
import '../../application/electronics/electronics_bloc.dart';
import '../../models/product/model_product.dart';
import '../homeviews/widgets/product_row.dart';

class ProductViewScreen extends StatelessWidget {
  final ModelProductData product;

  ProductViewScreen({required this.product});

  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<BestProductsBloc>(context)
          .add(BestProductsEvent.getBestProducts());

          BlocProvider.of<ElectronicsBloc>(context)
          .add(const ElectronicsEvent.getElectronics());
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        CupertinoIcons.back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.yellow),
                          const SizedBox(width: 8.0),
                          Text(
                            '${product.rating.rate} (${product.rating.count} reviews)',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.blue,),
                          Text(
                            '  Cart',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[600],
                            ),),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 16.0),

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
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

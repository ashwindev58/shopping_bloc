import 'package:flutter/material.dart';

import '../../../models/product/model_product.dart';
import 'build_product_card.dart';
import 'shimmer_custom_Size.dart';

class ProductsRow extends StatelessWidget {
  final String tittle;
  final dynamic bestProductsState;

  const ProductsRow(
      {super.key, required this.tittle, required this.bestProductsState});



  @override
  Widget build(BuildContext context) {
    List<ModelProductData> productList =bestProductsState.productList;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tittle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: bestProductsState.isLoading
                    ? [
                        for (int i = 0; i < 5; i++)
                          shimmerCustomSize(
                              width: constraints.maxWidth * 0.48,
                              height: constraints.maxHeight * 0.37)
                      ]
                    : [
                      for(int i=0;i<productList.length;i++)
                       buildProductCard(data: productList[i])
                      ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

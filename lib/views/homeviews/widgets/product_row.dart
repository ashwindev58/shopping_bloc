import 'package:flutter/material.dart';

import 'build_product_card.dart';

class ProductsRow extends StatelessWidget {
  final String tittle;

  const ProductsRow({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
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
              children: [
                buildProductCard('Product 1', 'Description 1',
                    'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg'),
                buildProductCard('Product 2', 'Description 2',
                    'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg'),
                buildProductCard('Product 3', 'Description 3',
                    'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

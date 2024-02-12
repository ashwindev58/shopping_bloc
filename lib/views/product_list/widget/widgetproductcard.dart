
import 'package:flutter/material.dart';
import 'package:shopping_bloc/models/product/model_product.dart';

class ProductCard extends StatelessWidget {
  final ModelProductData data;

  const ProductCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,color: Colors.white,surfaceTintColor: Colors.white,
      margin: const EdgeInsets.all(10),shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [const SizedBox(height: 20,),
          Expanded(
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(data.image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,maxLines: 1,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                // Text(
                //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: Colors.grey,
                //   ),
                // ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                      "₹ ${data.price}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(onPressed: (){}, icon:  const Icon(Icons.shopping_cart),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

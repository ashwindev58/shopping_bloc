import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shopping_bloc/style/colors.dart';

import 'widgetcategrycard.dart';

class WidgetCategories extends StatelessWidget {
  final List catList;
  const WidgetCategories({
    super.key,
    required this.catList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text(
            'Featured Categories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: 
            catList.isEmpty?
            
             ListView(
              scrollDirection: Axis.horizontal,
              children: [
                
                for (int i = 0; i < 5; i++)
                  shimmerCategoryCard()
              ],
            )
            
            :
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                
                for (int i = 0; i < catList.length; i++)
                  buildCategoryCard(
                    catList[i],
                    Icons.phone_android,
                    listColor[Random(i).nextInt(listColor.length)],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

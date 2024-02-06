
import 'package:flutter/material.dart';

import 'widgetcategrycard.dart';

class WidgetCategories extends StatelessWidget {
  const WidgetCategories({
    super.key,
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
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                          buildCategoryCard(
                              'Electronics', Icons.phone_android, Colors.blue),
                          buildCategoryCard(
                              'Fashion', Icons.accessibility, Colors.green),
                          buildCategoryCard('Home', Icons.home, Colors.orange),
                          buildCategoryCard('Beauty', Icons.face, Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

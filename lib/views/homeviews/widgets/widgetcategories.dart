import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/homeview/categories_bloc.dart';
import 'widgetcategrycard.dart';
// Replace with your actual widget file

class WidgetCategories extends StatelessWidget {
  const WidgetCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoriesBloc categoriesBloc = BlocProvider.of<CategoriesBloc>(context);

    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoadingState) {
          // Show loading indicator
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CategoriesState) {
          // Build the UI with the list of categories
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
                    children: state.categories.map((category) {
                      return buildCategoryCard(category.title, category.icon, category.color);
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        }

        return Container(); // Return an empty container if the state is unexpected
      },
    );
  }

}

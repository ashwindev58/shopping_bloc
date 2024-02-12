
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/search_product/search_bloc_bloc.dart';
import 'widgetbackbutton.dart';

class WidgetSearchArea extends StatelessWidget {
  const WidgetSearchArea({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("images/disc.jpg"),fit: BoxFit.cover)
      ),
      child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButtonWidget(),
            const SizedBox(height: 10,),
            const Text(
              'Find What You Need',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ), 
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for products...',
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey[300],
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                 BlocProvider.of<SearchBlocBloc>(context)
          .add( SearchBlocEvent.searchProduct(category: value,searchkey: value));
                // Implement search functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}

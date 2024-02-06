import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesState {
  final List<CategoryModel> categories;

  const CategoriesState(this.categories);
}

class CategoriesLoadingState extends CategoriesState {
   CategoriesLoadingState() : super([]);

  @override
  String toString() => 'CategoriesLoadingState';
}

class CategoriesEvent {}

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super( CategoriesLoadingState());

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    try {
      // Simulate fetching categories from an API (replace with your actual data fetching logic)
      await Future.delayed(Duration(seconds: 2));

      yield CategoriesState([
        CategoryModel('Electronics', Icons.phone_android, Colors.blue),
        CategoryModel('Fashion', Icons.accessibility, Colors.green),
        CategoryModel('Home', Icons.home, Colors.orange),
        CategoryModel('Beauty', Icons.face, Colors.pink),
      ]);
    } catch (e) {
      // Handle error
      yield state; // You might want to handle error state differently
    }
  }
}

class CategoryModel {
  final String title;
  final IconData icon;
  final Color color;

  const CategoryModel(this.title, this.icon, this.color);
}

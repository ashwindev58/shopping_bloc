import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesState {
  final List<CategoryModel> categories;

  const CategoriesState(this.categories);
}

class CategoriesEvent {}

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const CategoriesState([]));

  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    // You can add more logic here to load categories from an API or other sources.
    yield const CategoriesState([
      CategoryModel('Electronics', Icons.phone_android, Colors.blue),
      CategoryModel('Fashion', Icons.accessibility, Colors.green),
      CategoryModel('Home', Icons.home, Colors.orange),
      CategoryModel('Beauty', Icons.face, Colors.pink),
    ]);
  }
}

class CategoryModel {
  final String title;
  final IconData icon;
  final Color color;

  const CategoryModel(this.title, this.icon, this.color);
}


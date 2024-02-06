// product_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import 'productrepo.dart';

// Events
abstract class ProductEvent {}

class FetchProductsEvent extends ProductEvent {}

// States
abstract class ProductState {}

class LoadingState extends ProductState {}

class LoadedState extends ProductState {
  final List<String> categories;

  LoadedState(this.categories);
}

class ErrorState extends ProductState {
  final String error;

  ErrorState(this.error);
}

// BLoC
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _repository;

  ProductBloc(this._repository) : super(LoadingState()) {
    on<FetchProductsEvent>(_handleFetchProductsEvent);
  }

  Future<void> _handleFetchProductsEvent(FetchProductsEvent event, Emitter<ProductState> emit) async {
    try {
      final categories = await _repository.fetchCategories();
      emit(LoadedState(categories));
    } catch (e) {
      emit(ErrorState('Failed to load categories'));
    }
  }
}

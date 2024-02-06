// product_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:shopping_bloc/application/product/productrepo.dart';

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
  final ProductRepository _repository = ProductRepository();

  ProductBloc(super.initialState);

  @override
  ProductState get initialState => LoadingState();

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is FetchProductsEvent) {
      yield LoadingState();
      try {
        final categories = await _repository.fetchCategories();
        yield LoadedState(categories);
      } catch (e) {
        yield ErrorState('Failed to load categories');
      }
    }
  }
}

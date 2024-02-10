part of 'best_products_bloc.dart';

@freezed
class BestProductsEvent with _$BestProductsEvent {
   factory BestProductsEvent.getBestProducts() = _GetBestProducts;
}
part of 'best_products_bloc.dart';

@freezed
class BestProductsState with _$BestProductsState {

  const factory BestProductsState({
    required bool isLoading,
    required List<ModelProductData> productList,
  })=_BestProductsState;

   factory BestProductsState.initial(){
    return const BestProductsState(isLoading: true, productList: []);
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_bloc/api_service/products/get_best_products.dart';

import '../../models/product/model_product.dart';

part 'best_products_event.dart';
part 'best_products_state.dart';
part 'best_products_bloc.freezed.dart';

class BestProductsBloc extends Bloc<BestProductsEvent, BestProductsState> {
  BestProductsBloc() : super(BestProductsState.initial()) {
    on<_GetBestProducts>((event, emit) async {

      emit(
        const BestProductsState(
          isLoading: true,
          productList: [],
        ),
      );

      
      var response = await fetchProductData();

      emit(BestProductsState(isLoading: false, productList: response));


      // TODO: implement event handler
    });
  }
}

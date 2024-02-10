import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_bloc/api_service/home/search_product/search_product.dart';

import '../../models/product/model_product.dart';

part 'search_bloc_event.dart';
part 'search_bloc_state.dart';
part 'search_bloc_bloc.freezed.dart';

class SearchBlocBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  SearchBlocBloc() : super(SearchBlocState.initial()) {
    on<_SearchProduct>((event, emit) {

      emit(state.copyWith(isLoading: true,searchList: []),);

     var resp = fetchAllProductData();
     log(resp.toString());
     var resp2 = fetchcategoryProductData();
     log(resp2.toString());

      // TODO: implement event handler
    });
  }
}

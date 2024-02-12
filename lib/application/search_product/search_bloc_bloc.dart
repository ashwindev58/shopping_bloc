import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_bloc/api_service/home/search_product/search_product.dart';

import '../../models/product/model_product.dart';

part 'search_bloc_bloc.freezed.dart';
part 'search_bloc_event.dart';
part 'search_bloc_state.dart';

class SearchBlocBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  SearchBlocBloc() : super(SearchBlocState.initial()) {
    on<_SearchProduct>((event, emit) async {
      log("event : ${event.category} --- ${event.searchkey}");

      emit(
        state.copyWith(isLoading: true, searchList: []),
      );
      late dynamic resp;
      if (event.category == "all") {
         resp = await fetchAllProductData();
        log("event is alll $resp");
      } else {
         resp = await fetchcategoryProductData(category: event.category);
        log(resp.toString());
      }

      List<ModelProductData> lst=resp;
      List<ModelProductData> finallist=[];
      for(var mod in lst){

        if(mod.title.toLowerCase().contains(event.searchkey.toLowerCase())==true){
         finallist.add(mod);
        }
      }

      resp=finallist;

      emit(
        state.copyWith(isLoading: false, searchList: resp),
      );

      // TODO: implement event handler
    });
  }
}

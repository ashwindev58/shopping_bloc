import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../api_service/category/getcatgory.dart';

part 'category_bloc_bloc.freezed.dart';
part 'category_bloc_event.dart';
part 'category_bloc_state.dart';

class CategoryBlocBloc extends Bloc<CategoryBlocEvent, CategoryBlocState> {
  CategoryBlocBloc() : super( CategoryBlocState.initial()) { 
    on<_Started>((event, emit)async {

      emit(const CategoryBlocState(listCate: [], isLoading: true));


      var resp=await ApiServiceCategory().getCategory();
       emit(CategoryBlocState(listCate: resp, isLoading: false));
      // TODO: implement event handler
    });
  }
}



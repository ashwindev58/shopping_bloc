import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_bloc_bloc.freezed.dart';
part 'category_bloc_event.dart';
part 'category_bloc_state.dart';

class CategoryBlocBloc extends Bloc<CategoryBlocEvent, CategoryBlocState> {
  CategoryBlocBloc() : super( CategoryBlocState.initial()) {
    on<_Started>((event, emit) {

      emit(CategoryBlocState(message: "event Success", isLoading: false));
      // TODO: implement event handler
    });
  }
}

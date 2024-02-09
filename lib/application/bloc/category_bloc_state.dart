part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocState with _$CategoryBlocState {

  const factory CategoryBlocState({
    required String message,
    required bool isLoading,
  })=_Category_bloc_state;

   factory CategoryBlocState.initial(){
    return CategoryBlocState(message: "initaial", isLoading: true);
  }
}

part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocState with _$CategoryBlocState {

  const factory CategoryBlocState({
    required List listCate,
    required bool isLoading,
  })=_Category_bloc_state;

   factory CategoryBlocState.initial(){
    // ignore: prefer_const_constructors
    return CategoryBlocState(listCate: [], isLoading: true);
  }
}

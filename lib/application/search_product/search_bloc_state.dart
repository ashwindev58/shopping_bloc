part of 'search_bloc_bloc.dart';

@freezed
class SearchBlocState with _$SearchBlocState {

  const factory SearchBlocState({

    required bool isLoading,
    required List<ModelProductData> searchList,
  })=_SearchBlocState;

   factory SearchBlocState.initial(){
    return const SearchBlocState(isLoading: true, searchList: []);
  }
}

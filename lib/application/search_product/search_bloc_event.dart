part of 'search_bloc_bloc.dart';

@freezed
class SearchBlocEvent with _$SearchBlocEvent {
  const factory SearchBlocEvent.searchProduct() = _SearchProduct;
}
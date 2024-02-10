part of 'electronics_bloc.dart';

@freezed
class ElectronicsState with _$ElectronicsState {
  const factory ElectronicsState({
    required bool isLoading,
    required List<ModelProductData> productList,
  }) = _ElectronicsBlocState;

  factory ElectronicsState.initial() {
    return const ElectronicsState(
      isLoading: true,
      productList: [],
    );
  }
}

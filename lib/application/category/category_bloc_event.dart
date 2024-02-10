part of 'category_bloc_bloc.dart';

@freezed
class CategoryBlocEvent with _$CategoryBlocEvent {
  const factory CategoryBlocEvent.started() = _Started;
}
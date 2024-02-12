// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBlocEvent {
  String get searchkey => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchkey, String category) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchkey, String category)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchkey, String category)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProduct value) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProduct value)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBlocEventCopyWith<SearchBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocEventCopyWith<$Res> {
  factory $SearchBlocEventCopyWith(
          SearchBlocEvent value, $Res Function(SearchBlocEvent) then) =
      _$SearchBlocEventCopyWithImpl<$Res, SearchBlocEvent>;
  @useResult
  $Res call({String searchkey, String category});
}

/// @nodoc
class _$SearchBlocEventCopyWithImpl<$Res, $Val extends SearchBlocEvent>
    implements $SearchBlocEventCopyWith<$Res> {
  _$SearchBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchkey = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      searchkey: null == searchkey
          ? _value.searchkey
          : searchkey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductImplCopyWith<$Res>
    implements $SearchBlocEventCopyWith<$Res> {
  factory _$$SearchProductImplCopyWith(
          _$SearchProductImpl value, $Res Function(_$SearchProductImpl) then) =
      __$$SearchProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchkey, String category});
}

/// @nodoc
class __$$SearchProductImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$SearchProductImpl>
    implements _$$SearchProductImplCopyWith<$Res> {
  __$$SearchProductImplCopyWithImpl(
      _$SearchProductImpl _value, $Res Function(_$SearchProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchkey = null,
    Object? category = null,
  }) {
    return _then(_$SearchProductImpl(
      searchkey: null == searchkey
          ? _value.searchkey
          : searchkey // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductImpl implements _SearchProduct {
  const _$SearchProductImpl({required this.searchkey, required this.category});

  @override
  final String searchkey;
  @override
  final String category;

  @override
  String toString() {
    return 'SearchBlocEvent.searchProduct(searchkey: $searchkey, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductImpl &&
            (identical(other.searchkey, searchkey) ||
                other.searchkey == searchkey) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchkey, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      __$$SearchProductImplCopyWithImpl<_$SearchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchkey, String category) searchProduct,
  }) {
    return searchProduct(searchkey, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchkey, String category)? searchProduct,
  }) {
    return searchProduct?.call(searchkey, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchkey, String category)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(searchkey, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchProduct value) searchProduct,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchProduct value)? searchProduct,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class _SearchProduct implements SearchBlocEvent {
  const factory _SearchProduct(
      {required final String searchkey,
      required final String category}) = _$SearchProductImpl;

  @override
  String get searchkey;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$SearchProductImplCopyWith<_$SearchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ModelProductData> get searchList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBlocStateCopyWith<SearchBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocStateCopyWith<$Res> {
  factory $SearchBlocStateCopyWith(
          SearchBlocState value, $Res Function(SearchBlocState) then) =
      _$SearchBlocStateCopyWithImpl<$Res, SearchBlocState>;
  @useResult
  $Res call({bool isLoading, List<ModelProductData> searchList});
}

/// @nodoc
class _$SearchBlocStateCopyWithImpl<$Res, $Val extends SearchBlocState>
    implements $SearchBlocStateCopyWith<$Res> {
  _$SearchBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchList: null == searchList
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<ModelProductData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchBlocStateImplCopyWith<$Res>
    implements $SearchBlocStateCopyWith<$Res> {
  factory _$$SearchBlocStateImplCopyWith(_$SearchBlocStateImpl value,
          $Res Function(_$SearchBlocStateImpl) then) =
      __$$SearchBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ModelProductData> searchList});
}

/// @nodoc
class __$$SearchBlocStateImplCopyWithImpl<$Res>
    extends _$SearchBlocStateCopyWithImpl<$Res, _$SearchBlocStateImpl>
    implements _$$SearchBlocStateImplCopyWith<$Res> {
  __$$SearchBlocStateImplCopyWithImpl(
      _$SearchBlocStateImpl _value, $Res Function(_$SearchBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchList = null,
  }) {
    return _then(_$SearchBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchList: null == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<ModelProductData>,
    ));
  }
}

/// @nodoc

class _$SearchBlocStateImpl implements _SearchBlocState {
  const _$SearchBlocStateImpl(
      {required this.isLoading,
      required final List<ModelProductData> searchList})
      : _searchList = searchList;

  @override
  final bool isLoading;
  final List<ModelProductData> _searchList;
  @override
  List<ModelProductData> get searchList {
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  @override
  String toString() {
    return 'SearchBlocState(isLoading: $isLoading, searchList: $searchList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBlocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_searchList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBlocStateImplCopyWith<_$SearchBlocStateImpl> get copyWith =>
      __$$SearchBlocStateImplCopyWithImpl<_$SearchBlocStateImpl>(
          this, _$identity);
}

abstract class _SearchBlocState implements SearchBlocState {
  const factory _SearchBlocState(
          {required final bool isLoading,
          required final List<ModelProductData> searchList}) =
      _$SearchBlocStateImpl;

  @override
  bool get isLoading;
  @override
  List<ModelProductData> get searchList;
  @override
  @JsonKey(ignore: true)
  _$$SearchBlocStateImplCopyWith<_$SearchBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

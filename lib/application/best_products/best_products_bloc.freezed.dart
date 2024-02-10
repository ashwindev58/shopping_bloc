// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BestProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBestProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBestProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBestProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBestProducts value) getBestProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBestProducts value)? getBestProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBestProducts value)? getBestProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestProductsEventCopyWith<$Res> {
  factory $BestProductsEventCopyWith(
          BestProductsEvent value, $Res Function(BestProductsEvent) then) =
      _$BestProductsEventCopyWithImpl<$Res, BestProductsEvent>;
}

/// @nodoc
class _$BestProductsEventCopyWithImpl<$Res, $Val extends BestProductsEvent>
    implements $BestProductsEventCopyWith<$Res> {
  _$BestProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBestProductsImplCopyWith<$Res> {
  factory _$$GetBestProductsImplCopyWith(_$GetBestProductsImpl value,
          $Res Function(_$GetBestProductsImpl) then) =
      __$$GetBestProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBestProductsImplCopyWithImpl<$Res>
    extends _$BestProductsEventCopyWithImpl<$Res, _$GetBestProductsImpl>
    implements _$$GetBestProductsImplCopyWith<$Res> {
  __$$GetBestProductsImplCopyWithImpl(
      _$GetBestProductsImpl _value, $Res Function(_$GetBestProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBestProductsImpl
    with DiagnosticableTreeMixin
    implements _GetBestProducts {
  _$GetBestProductsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BestProductsEvent.getBestProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'BestProductsEvent.getBestProducts'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBestProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBestProducts,
  }) {
    return getBestProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBestProducts,
  }) {
    return getBestProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBestProducts,
    required TResult orElse(),
  }) {
    if (getBestProducts != null) {
      return getBestProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBestProducts value) getBestProducts,
  }) {
    return getBestProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBestProducts value)? getBestProducts,
  }) {
    return getBestProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBestProducts value)? getBestProducts,
    required TResult orElse(),
  }) {
    if (getBestProducts != null) {
      return getBestProducts(this);
    }
    return orElse();
  }
}

abstract class _GetBestProducts implements BestProductsEvent {
  factory _GetBestProducts() = _$GetBestProductsImpl;
}

/// @nodoc
mixin _$BestProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ModelProductData> get productList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestProductsStateCopyWith<BestProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestProductsStateCopyWith<$Res> {
  factory $BestProductsStateCopyWith(
          BestProductsState value, $Res Function(BestProductsState) then) =
      _$BestProductsStateCopyWithImpl<$Res, BestProductsState>;
  @useResult
  $Res call({bool isLoading, List<ModelProductData> productList});
}

/// @nodoc
class _$BestProductsStateCopyWithImpl<$Res, $Val extends BestProductsState>
    implements $BestProductsStateCopyWith<$Res> {
  _$BestProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ModelProductData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestProductsStateImplCopyWith<$Res>
    implements $BestProductsStateCopyWith<$Res> {
  factory _$$BestProductsStateImplCopyWith(_$BestProductsStateImpl value,
          $Res Function(_$BestProductsStateImpl) then) =
      __$$BestProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ModelProductData> productList});
}

/// @nodoc
class __$$BestProductsStateImplCopyWithImpl<$Res>
    extends _$BestProductsStateCopyWithImpl<$Res, _$BestProductsStateImpl>
    implements _$$BestProductsStateImplCopyWith<$Res> {
  __$$BestProductsStateImplCopyWithImpl(_$BestProductsStateImpl _value,
      $Res Function(_$BestProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productList = null,
  }) {
    return _then(_$BestProductsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ModelProductData>,
    ));
  }
}

/// @nodoc

class _$BestProductsStateImpl
    with DiagnosticableTreeMixin
    implements _BestProductsState {
  const _$BestProductsStateImpl(
      {required this.isLoading,
      required final List<ModelProductData> productList})
      : _productList = productList;

  @override
  final bool isLoading;
  final List<ModelProductData> _productList;
  @override
  List<ModelProductData> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BestProductsState(isLoading: $isLoading, productList: $productList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BestProductsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('productList', productList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestProductsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_productList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestProductsStateImplCopyWith<_$BestProductsStateImpl> get copyWith =>
      __$$BestProductsStateImplCopyWithImpl<_$BestProductsStateImpl>(
          this, _$identity);
}

abstract class _BestProductsState implements BestProductsState {
  const factory _BestProductsState(
          {required final bool isLoading,
          required final List<ModelProductData> productList}) =
      _$BestProductsStateImpl;

  @override
  bool get isLoading;
  @override
  List<ModelProductData> get productList;
  @override
  @JsonKey(ignore: true)
  _$$BestProductsStateImplCopyWith<_$BestProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

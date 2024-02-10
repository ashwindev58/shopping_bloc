// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'electronics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ElectronicsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getElectronics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getElectronics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getElectronics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetElectronics value) getElectronics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetElectronics value)? getElectronics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetElectronics value)? getElectronics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElectronicsEventCopyWith<$Res> {
  factory $ElectronicsEventCopyWith(
          ElectronicsEvent value, $Res Function(ElectronicsEvent) then) =
      _$ElectronicsEventCopyWithImpl<$Res, ElectronicsEvent>;
}

/// @nodoc
class _$ElectronicsEventCopyWithImpl<$Res, $Val extends ElectronicsEvent>
    implements $ElectronicsEventCopyWith<$Res> {
  _$ElectronicsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetElectronicsImplCopyWith<$Res> {
  factory _$$GetElectronicsImplCopyWith(_$GetElectronicsImpl value,
          $Res Function(_$GetElectronicsImpl) then) =
      __$$GetElectronicsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetElectronicsImplCopyWithImpl<$Res>
    extends _$ElectronicsEventCopyWithImpl<$Res, _$GetElectronicsImpl>
    implements _$$GetElectronicsImplCopyWith<$Res> {
  __$$GetElectronicsImplCopyWithImpl(
      _$GetElectronicsImpl _value, $Res Function(_$GetElectronicsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetElectronicsImpl
    with DiagnosticableTreeMixin
    implements _GetElectronics {
  const _$GetElectronicsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ElectronicsEvent.getElectronics()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ElectronicsEvent.getElectronics'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetElectronicsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getElectronics,
  }) {
    return getElectronics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getElectronics,
  }) {
    return getElectronics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getElectronics,
    required TResult orElse(),
  }) {
    if (getElectronics != null) {
      return getElectronics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetElectronics value) getElectronics,
  }) {
    return getElectronics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetElectronics value)? getElectronics,
  }) {
    return getElectronics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetElectronics value)? getElectronics,
    required TResult orElse(),
  }) {
    if (getElectronics != null) {
      return getElectronics(this);
    }
    return orElse();
  }
}

abstract class _GetElectronics implements ElectronicsEvent {
  const factory _GetElectronics() = _$GetElectronicsImpl;
}

/// @nodoc
mixin _$ElectronicsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ModelProductData> get productList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ElectronicsStateCopyWith<ElectronicsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElectronicsStateCopyWith<$Res> {
  factory $ElectronicsStateCopyWith(
          ElectronicsState value, $Res Function(ElectronicsState) then) =
      _$ElectronicsStateCopyWithImpl<$Res, ElectronicsState>;
  @useResult
  $Res call({bool isLoading, List<ModelProductData> productList});
}

/// @nodoc
class _$ElectronicsStateCopyWithImpl<$Res, $Val extends ElectronicsState>
    implements $ElectronicsStateCopyWith<$Res> {
  _$ElectronicsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ElectronicsBlocStateImplCopyWith<$Res>
    implements $ElectronicsStateCopyWith<$Res> {
  factory _$$ElectronicsBlocStateImplCopyWith(_$ElectronicsBlocStateImpl value,
          $Res Function(_$ElectronicsBlocStateImpl) then) =
      __$$ElectronicsBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ModelProductData> productList});
}

/// @nodoc
class __$$ElectronicsBlocStateImplCopyWithImpl<$Res>
    extends _$ElectronicsStateCopyWithImpl<$Res, _$ElectronicsBlocStateImpl>
    implements _$$ElectronicsBlocStateImplCopyWith<$Res> {
  __$$ElectronicsBlocStateImplCopyWithImpl(_$ElectronicsBlocStateImpl _value,
      $Res Function(_$ElectronicsBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? productList = null,
  }) {
    return _then(_$ElectronicsBlocStateImpl(
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

class _$ElectronicsBlocStateImpl
    with DiagnosticableTreeMixin
    implements _ElectronicsBlocState {
  const _$ElectronicsBlocStateImpl(
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
    return 'ElectronicsState(isLoading: $isLoading, productList: $productList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ElectronicsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('productList', productList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElectronicsBlocStateImpl &&
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
  _$$ElectronicsBlocStateImplCopyWith<_$ElectronicsBlocStateImpl>
      get copyWith =>
          __$$ElectronicsBlocStateImplCopyWithImpl<_$ElectronicsBlocStateImpl>(
              this, _$identity);
}

abstract class _ElectronicsBlocState implements ElectronicsState {
  const factory _ElectronicsBlocState(
          {required final bool isLoading,
          required final List<ModelProductData> productList}) =
      _$ElectronicsBlocStateImpl;

  @override
  bool get isLoading;
  @override
  List<ModelProductData> get productList;
  @override
  @JsonKey(ignore: true)
  _$$ElectronicsBlocStateImplCopyWith<_$ElectronicsBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

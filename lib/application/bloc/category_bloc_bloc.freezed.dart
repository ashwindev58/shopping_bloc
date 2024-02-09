// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBlocEventCopyWith<$Res> {
  factory $CategoryBlocEventCopyWith(
          CategoryBlocEvent value, $Res Function(CategoryBlocEvent) then) =
      _$CategoryBlocEventCopyWithImpl<$Res, CategoryBlocEvent>;
}

/// @nodoc
class _$CategoryBlocEventCopyWithImpl<$Res, $Val extends CategoryBlocEvent>
    implements $CategoryBlocEventCopyWith<$Res> {
  _$CategoryBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CategoryBlocEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryBlocEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoryBlocEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$CategoryBlocState {
  String get message => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryBlocStateCopyWith<CategoryBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBlocStateCopyWith<$Res> {
  factory $CategoryBlocStateCopyWith(
          CategoryBlocState value, $Res Function(CategoryBlocState) then) =
      _$CategoryBlocStateCopyWithImpl<$Res, CategoryBlocState>;
  @useResult
  $Res call({String message, bool isLoading});
}

/// @nodoc
class _$CategoryBlocStateCopyWithImpl<$Res, $Val extends CategoryBlocState>
    implements $CategoryBlocStateCopyWith<$Res> {
  _$CategoryBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Category_bloc_stateImplCopyWith<$Res>
    implements $CategoryBlocStateCopyWith<$Res> {
  factory _$$Category_bloc_stateImplCopyWith(_$Category_bloc_stateImpl value,
          $Res Function(_$Category_bloc_stateImpl) then) =
      __$$Category_bloc_stateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isLoading});
}

/// @nodoc
class __$$Category_bloc_stateImplCopyWithImpl<$Res>
    extends _$CategoryBlocStateCopyWithImpl<$Res, _$Category_bloc_stateImpl>
    implements _$$Category_bloc_stateImplCopyWith<$Res> {
  __$$Category_bloc_stateImplCopyWithImpl(_$Category_bloc_stateImpl _value,
      $Res Function(_$Category_bloc_stateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isLoading = null,
  }) {
    return _then(_$Category_bloc_stateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Category_bloc_stateImpl
    with DiagnosticableTreeMixin
    implements _Category_bloc_state {
  const _$Category_bloc_stateImpl(
      {required this.message, required this.isLoading});

  @override
  final String message;
  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryBlocState(message: $message, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryBlocState'))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Category_bloc_stateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Category_bloc_stateImplCopyWith<_$Category_bloc_stateImpl> get copyWith =>
      __$$Category_bloc_stateImplCopyWithImpl<_$Category_bloc_stateImpl>(
          this, _$identity);
}

abstract class _Category_bloc_state implements CategoryBlocState {
  const factory _Category_bloc_state(
      {required final String message,
      required final bool isLoading}) = _$Category_bloc_stateImpl;

  @override
  String get message;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$Category_bloc_stateImplCopyWith<_$Category_bloc_stateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

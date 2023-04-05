// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calorie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalorieEvent {
  CalorieParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalorieParams params) calculateCalorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalorieParams params)? calculateCalorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalorieParams params)? calculateCalorie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateCalorie value) calculateCalorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateCalorie value)? calculateCalorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateCalorie value)? calculateCalorie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalorieEventCopyWith<CalorieEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalorieEventCopyWith<$Res> {
  factory $CalorieEventCopyWith(
          CalorieEvent value, $Res Function(CalorieEvent) then) =
      _$CalorieEventCopyWithImpl<$Res, CalorieEvent>;
  @useResult
  $Res call({CalorieParams params});
}

/// @nodoc
class _$CalorieEventCopyWithImpl<$Res, $Val extends CalorieEvent>
    implements $CalorieEventCopyWith<$Res> {
  _$CalorieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CalorieParams,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateCalorieCopyWith<$Res>
    implements $CalorieEventCopyWith<$Res> {
  factory _$$CalculateCalorieCopyWith(
          _$CalculateCalorie value, $Res Function(_$CalculateCalorie) then) =
      __$$CalculateCalorieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CalorieParams params});
}

/// @nodoc
class __$$CalculateCalorieCopyWithImpl<$Res>
    extends _$CalorieEventCopyWithImpl<$Res, _$CalculateCalorie>
    implements _$$CalculateCalorieCopyWith<$Res> {
  __$$CalculateCalorieCopyWithImpl(
      _$CalculateCalorie _value, $Res Function(_$CalculateCalorie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$CalculateCalorie(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as CalorieParams,
    ));
  }
}

/// @nodoc

class _$CalculateCalorie implements CalculateCalorie {
  const _$CalculateCalorie({required this.params});

  @override
  final CalorieParams params;

  @override
  String toString() {
    return 'CalorieEvent.calculateCalorie(params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateCalorie &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateCalorieCopyWith<_$CalculateCalorie> get copyWith =>
      __$$CalculateCalorieCopyWithImpl<_$CalculateCalorie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CalorieParams params) calculateCalorie,
  }) {
    return calculateCalorie(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CalorieParams params)? calculateCalorie,
  }) {
    return calculateCalorie?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CalorieParams params)? calculateCalorie,
    required TResult orElse(),
  }) {
    if (calculateCalorie != null) {
      return calculateCalorie(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalculateCalorie value) calculateCalorie,
  }) {
    return calculateCalorie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalculateCalorie value)? calculateCalorie,
  }) {
    return calculateCalorie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalculateCalorie value)? calculateCalorie,
    required TResult orElse(),
  }) {
    if (calculateCalorie != null) {
      return calculateCalorie(this);
    }
    return orElse();
  }
}

abstract class CalculateCalorie implements CalorieEvent {
  const factory CalculateCalorie({required final CalorieParams params}) =
      _$CalculateCalorie;

  @override
  CalorieParams get params;
  @override
  @JsonKey(ignore: true)
  _$$CalculateCalorieCopyWith<_$CalculateCalorie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CalorieState {
  ViewDataState<double> get calorieState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalorieStateCopyWith<CalorieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalorieStateCopyWith<$Res> {
  factory $CalorieStateCopyWith(
          CalorieState value, $Res Function(CalorieState) then) =
      _$CalorieStateCopyWithImpl<$Res, CalorieState>;
  @useResult
  $Res call({ViewDataState<double> calorieState});
}

/// @nodoc
class _$CalorieStateCopyWithImpl<$Res, $Val extends CalorieState>
    implements $CalorieStateCopyWith<$Res> {
  _$CalorieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calorieState = null,
  }) {
    return _then(_value.copyWith(
      calorieState: null == calorieState
          ? _value.calorieState
          : calorieState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalorieStateCopyWith<$Res>
    implements $CalorieStateCopyWith<$Res> {
  factory _$$_CalorieStateCopyWith(
          _$_CalorieState value, $Res Function(_$_CalorieState) then) =
      __$$_CalorieStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewDataState<double> calorieState});
}

/// @nodoc
class __$$_CalorieStateCopyWithImpl<$Res>
    extends _$CalorieStateCopyWithImpl<$Res, _$_CalorieState>
    implements _$$_CalorieStateCopyWith<$Res> {
  __$$_CalorieStateCopyWithImpl(
      _$_CalorieState _value, $Res Function(_$_CalorieState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calorieState = null,
  }) {
    return _then(_$_CalorieState(
      calorieState: null == calorieState
          ? _value.calorieState
          : calorieState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<double>,
    ));
  }
}

/// @nodoc

class _$_CalorieState implements _CalorieState {
  const _$_CalorieState({required this.calorieState});

  @override
  final ViewDataState<double> calorieState;

  @override
  String toString() {
    return 'CalorieState(calorieState: $calorieState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalorieState &&
            (identical(other.calorieState, calorieState) ||
                other.calorieState == calorieState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calorieState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalorieStateCopyWith<_$_CalorieState> get copyWith =>
      __$$_CalorieStateCopyWithImpl<_$_CalorieState>(this, _$identity);
}

abstract class _CalorieState implements CalorieState {
  const factory _CalorieState(
      {required final ViewDataState<double> calorieState}) = _$_CalorieState;

  @override
  ViewDataState<double> get calorieState;
  @override
  @JsonKey(ignore: true)
  _$$_CalorieStateCopyWith<_$_CalorieState> get copyWith =>
      throw _privateConstructorUsedError;
}

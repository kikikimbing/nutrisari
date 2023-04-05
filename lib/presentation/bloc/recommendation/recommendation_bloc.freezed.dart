// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecommendationEvent {
  String get foodName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String foodName) getRecommendation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String foodName)? getRecommendation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String foodName)? getRecommendation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecommendation value) getRecommendation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecommendation value)? getRecommendation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecommendation value)? getRecommendation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendationEventCopyWith<RecommendationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationEventCopyWith<$Res> {
  factory $RecommendationEventCopyWith(
          RecommendationEvent value, $Res Function(RecommendationEvent) then) =
      _$RecommendationEventCopyWithImpl<$Res, RecommendationEvent>;
  @useResult
  $Res call({String foodName});
}

/// @nodoc
class _$RecommendationEventCopyWithImpl<$Res, $Val extends RecommendationEvent>
    implements $RecommendationEventCopyWith<$Res> {
  _$RecommendationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = null,
  }) {
    return _then(_value.copyWith(
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecommendationCopyWith<$Res>
    implements $RecommendationEventCopyWith<$Res> {
  factory _$$GetRecommendationCopyWith(
          _$GetRecommendation value, $Res Function(_$GetRecommendation) then) =
      __$$GetRecommendationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String foodName});
}

/// @nodoc
class __$$GetRecommendationCopyWithImpl<$Res>
    extends _$RecommendationEventCopyWithImpl<$Res, _$GetRecommendation>
    implements _$$GetRecommendationCopyWith<$Res> {
  __$$GetRecommendationCopyWithImpl(
      _$GetRecommendation _value, $Res Function(_$GetRecommendation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = null,
  }) {
    return _then(_$GetRecommendation(
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRecommendation implements GetRecommendation {
  const _$GetRecommendation({required this.foodName});

  @override
  final String foodName;

  @override
  String toString() {
    return 'RecommendationEvent.getRecommendation(foodName: $foodName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecommendation &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecommendationCopyWith<_$GetRecommendation> get copyWith =>
      __$$GetRecommendationCopyWithImpl<_$GetRecommendation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String foodName) getRecommendation,
  }) {
    return getRecommendation(foodName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String foodName)? getRecommendation,
  }) {
    return getRecommendation?.call(foodName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String foodName)? getRecommendation,
    required TResult orElse(),
  }) {
    if (getRecommendation != null) {
      return getRecommendation(foodName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecommendation value) getRecommendation,
  }) {
    return getRecommendation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecommendation value)? getRecommendation,
  }) {
    return getRecommendation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecommendation value)? getRecommendation,
    required TResult orElse(),
  }) {
    if (getRecommendation != null) {
      return getRecommendation(this);
    }
    return orElse();
  }
}

abstract class GetRecommendation implements RecommendationEvent {
  const factory GetRecommendation({required final String foodName}) =
      _$GetRecommendation;

  @override
  String get foodName;
  @override
  @JsonKey(ignore: true)
  _$$GetRecommendationCopyWith<_$GetRecommendation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecommendationState {
  ViewDataState<List<Food>> get recommendationState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendationStateCopyWith<RecommendationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendationStateCopyWith<$Res> {
  factory $RecommendationStateCopyWith(
          RecommendationState value, $Res Function(RecommendationState) then) =
      _$RecommendationStateCopyWithImpl<$Res, RecommendationState>;
  @useResult
  $Res call({ViewDataState<List<Food>> recommendationState});
}

/// @nodoc
class _$RecommendationStateCopyWithImpl<$Res, $Val extends RecommendationState>
    implements $RecommendationStateCopyWith<$Res> {
  _$RecommendationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationState = null,
  }) {
    return _then(_value.copyWith(
      recommendationState: null == recommendationState
          ? _value.recommendationState
          : recommendationState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<List<Food>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecommendationStateCopyWith<$Res>
    implements $RecommendationStateCopyWith<$Res> {
  factory _$$_RecommendationStateCopyWith(_$_RecommendationState value,
          $Res Function(_$_RecommendationState) then) =
      __$$_RecommendationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewDataState<List<Food>> recommendationState});
}

/// @nodoc
class __$$_RecommendationStateCopyWithImpl<$Res>
    extends _$RecommendationStateCopyWithImpl<$Res, _$_RecommendationState>
    implements _$$_RecommendationStateCopyWith<$Res> {
  __$$_RecommendationStateCopyWithImpl(_$_RecommendationState _value,
      $Res Function(_$_RecommendationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationState = null,
  }) {
    return _then(_$_RecommendationState(
      recommendationState: null == recommendationState
          ? _value.recommendationState
          : recommendationState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<List<Food>>,
    ));
  }
}

/// @nodoc

class _$_RecommendationState implements _RecommendationState {
  const _$_RecommendationState({required this.recommendationState});

  @override
  final ViewDataState<List<Food>> recommendationState;

  @override
  String toString() {
    return 'RecommendationState(recommendationState: $recommendationState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecommendationState &&
            (identical(other.recommendationState, recommendationState) ||
                other.recommendationState == recommendationState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recommendationState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecommendationStateCopyWith<_$_RecommendationState> get copyWith =>
      __$$_RecommendationStateCopyWithImpl<_$_RecommendationState>(
          this, _$identity);
}

abstract class _RecommendationState implements RecommendationState {
  const factory _RecommendationState(
          {required final ViewDataState<List<Food>> recommendationState}) =
      _$_RecommendationState;

  @override
  ViewDataState<List<Food>> get recommendationState;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendationStateCopyWith<_$_RecommendationState> get copyWith =>
      throw _privateConstructorUsedError;
}

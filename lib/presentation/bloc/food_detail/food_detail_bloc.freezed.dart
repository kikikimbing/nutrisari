// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodDetailEvent {
  String get foodId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String foodId) getFoodDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String foodId)? getFoodDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String foodId)? getFoodDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFoodDetail value) getFoodDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFoodDetail value)? getFoodDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFoodDetail value)? getFoodDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodDetailEventCopyWith<FoodDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDetailEventCopyWith<$Res> {
  factory $FoodDetailEventCopyWith(
          FoodDetailEvent value, $Res Function(FoodDetailEvent) then) =
      _$FoodDetailEventCopyWithImpl<$Res, FoodDetailEvent>;
  @useResult
  $Res call({String foodId});
}

/// @nodoc
class _$FoodDetailEventCopyWithImpl<$Res, $Val extends FoodDetailEvent>
    implements $FoodDetailEventCopyWith<$Res> {
  _$FoodDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
  }) {
    return _then(_value.copyWith(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFoodDetailCopyWith<$Res>
    implements $FoodDetailEventCopyWith<$Res> {
  factory _$$GetFoodDetailCopyWith(
          _$GetFoodDetail value, $Res Function(_$GetFoodDetail) then) =
      __$$GetFoodDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String foodId});
}

/// @nodoc
class __$$GetFoodDetailCopyWithImpl<$Res>
    extends _$FoodDetailEventCopyWithImpl<$Res, _$GetFoodDetail>
    implements _$$GetFoodDetailCopyWith<$Res> {
  __$$GetFoodDetailCopyWithImpl(
      _$GetFoodDetail _value, $Res Function(_$GetFoodDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = null,
  }) {
    return _then(_$GetFoodDetail(
      foodId: null == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFoodDetail implements GetFoodDetail {
  const _$GetFoodDetail({required this.foodId});

  @override
  final String foodId;

  @override
  String toString() {
    return 'FoodDetailEvent.getFoodDetail(foodId: $foodId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFoodDetail &&
            (identical(other.foodId, foodId) || other.foodId == foodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFoodDetailCopyWith<_$GetFoodDetail> get copyWith =>
      __$$GetFoodDetailCopyWithImpl<_$GetFoodDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String foodId) getFoodDetail,
  }) {
    return getFoodDetail(foodId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String foodId)? getFoodDetail,
  }) {
    return getFoodDetail?.call(foodId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String foodId)? getFoodDetail,
    required TResult orElse(),
  }) {
    if (getFoodDetail != null) {
      return getFoodDetail(foodId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFoodDetail value) getFoodDetail,
  }) {
    return getFoodDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFoodDetail value)? getFoodDetail,
  }) {
    return getFoodDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFoodDetail value)? getFoodDetail,
    required TResult orElse(),
  }) {
    if (getFoodDetail != null) {
      return getFoodDetail(this);
    }
    return orElse();
  }
}

abstract class GetFoodDetail implements FoodDetailEvent {
  const factory GetFoodDetail({required final String foodId}) = _$GetFoodDetail;

  @override
  String get foodId;
  @override
  @JsonKey(ignore: true)
  _$$GetFoodDetailCopyWith<_$GetFoodDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodDetailState {
  ViewDataState<Food> get foodDetailState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodDetailStateCopyWith<FoodDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDetailStateCopyWith<$Res> {
  factory $FoodDetailStateCopyWith(
          FoodDetailState value, $Res Function(FoodDetailState) then) =
      _$FoodDetailStateCopyWithImpl<$Res, FoodDetailState>;
  @useResult
  $Res call({ViewDataState<Food> foodDetailState});
}

/// @nodoc
class _$FoodDetailStateCopyWithImpl<$Res, $Val extends FoodDetailState>
    implements $FoodDetailStateCopyWith<$Res> {
  _$FoodDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodDetailState = null,
  }) {
    return _then(_value.copyWith(
      foodDetailState: null == foodDetailState
          ? _value.foodDetailState
          : foodDetailState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<Food>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodDetailStateCopyWith<$Res>
    implements $FoodDetailStateCopyWith<$Res> {
  factory _$$_FoodDetailStateCopyWith(
          _$_FoodDetailState value, $Res Function(_$_FoodDetailState) then) =
      __$$_FoodDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewDataState<Food> foodDetailState});
}

/// @nodoc
class __$$_FoodDetailStateCopyWithImpl<$Res>
    extends _$FoodDetailStateCopyWithImpl<$Res, _$_FoodDetailState>
    implements _$$_FoodDetailStateCopyWith<$Res> {
  __$$_FoodDetailStateCopyWithImpl(
      _$_FoodDetailState _value, $Res Function(_$_FoodDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodDetailState = null,
  }) {
    return _then(_$_FoodDetailState(
      foodDetailState: null == foodDetailState
          ? _value.foodDetailState
          : foodDetailState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<Food>,
    ));
  }
}

/// @nodoc

class _$_FoodDetailState implements _FoodDetailState {
  const _$_FoodDetailState({required this.foodDetailState});

  @override
  final ViewDataState<Food> foodDetailState;

  @override
  String toString() {
    return 'FoodDetailState(foodDetailState: $foodDetailState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodDetailState &&
            (identical(other.foodDetailState, foodDetailState) ||
                other.foodDetailState == foodDetailState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodDetailState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodDetailStateCopyWith<_$_FoodDetailState> get copyWith =>
      __$$_FoodDetailStateCopyWithImpl<_$_FoodDetailState>(this, _$identity);
}

abstract class _FoodDetailState implements FoodDetailState {
  const factory _FoodDetailState(
          {required final ViewDataState<Food> foodDetailState}) =
      _$_FoodDetailState;

  @override
  ViewDataState<Food> get foodDetailState;
  @override
  @JsonKey(ignore: true)
  _$$_FoodDetailStateCopyWith<_$_FoodDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

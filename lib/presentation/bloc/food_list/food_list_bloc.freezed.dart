// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FoodListEvent {
  String get foodName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String foodName) getFoodList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String foodName)? getFoodList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String foodName)? getFoodList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFoodList value) getFoodList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFoodList value)? getFoodList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFoodList value)? getFoodList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodListEventCopyWith<FoodListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodListEventCopyWith<$Res> {
  factory $FoodListEventCopyWith(
          FoodListEvent value, $Res Function(FoodListEvent) then) =
      _$FoodListEventCopyWithImpl<$Res, FoodListEvent>;
  @useResult
  $Res call({String foodName});
}

/// @nodoc
class _$FoodListEventCopyWithImpl<$Res, $Val extends FoodListEvent>
    implements $FoodListEventCopyWith<$Res> {
  _$FoodListEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetFoodListCopyWith<$Res>
    implements $FoodListEventCopyWith<$Res> {
  factory _$$GetFoodListCopyWith(
          _$GetFoodList value, $Res Function(_$GetFoodList) then) =
      __$$GetFoodListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String foodName});
}

/// @nodoc
class __$$GetFoodListCopyWithImpl<$Res>
    extends _$FoodListEventCopyWithImpl<$Res, _$GetFoodList>
    implements _$$GetFoodListCopyWith<$Res> {
  __$$GetFoodListCopyWithImpl(
      _$GetFoodList _value, $Res Function(_$GetFoodList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodName = null,
  }) {
    return _then(_$GetFoodList(
      foodName: null == foodName
          ? _value.foodName
          : foodName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFoodList implements GetFoodList {
  const _$GetFoodList({required this.foodName});

  @override
  final String foodName;

  @override
  String toString() {
    return 'FoodListEvent.getFoodList(foodName: $foodName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFoodList &&
            (identical(other.foodName, foodName) ||
                other.foodName == foodName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFoodListCopyWith<_$GetFoodList> get copyWith =>
      __$$GetFoodListCopyWithImpl<_$GetFoodList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String foodName) getFoodList,
  }) {
    return getFoodList(foodName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String foodName)? getFoodList,
  }) {
    return getFoodList?.call(foodName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String foodName)? getFoodList,
    required TResult orElse(),
  }) {
    if (getFoodList != null) {
      return getFoodList(foodName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFoodList value) getFoodList,
  }) {
    return getFoodList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFoodList value)? getFoodList,
  }) {
    return getFoodList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFoodList value)? getFoodList,
    required TResult orElse(),
  }) {
    if (getFoodList != null) {
      return getFoodList(this);
    }
    return orElse();
  }
}

abstract class GetFoodList implements FoodListEvent {
  const factory GetFoodList({required final String foodName}) = _$GetFoodList;

  @override
  String get foodName;
  @override
  @JsonKey(ignore: true)
  _$$GetFoodListCopyWith<_$GetFoodList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodListState {
  ViewDataState<List<Food>> get foodListState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodListStateCopyWith<FoodListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodListStateCopyWith<$Res> {
  factory $FoodListStateCopyWith(
          FoodListState value, $Res Function(FoodListState) then) =
      _$FoodListStateCopyWithImpl<$Res, FoodListState>;
  @useResult
  $Res call({ViewDataState<List<Food>> foodListState});
}

/// @nodoc
class _$FoodListStateCopyWithImpl<$Res, $Val extends FoodListState>
    implements $FoodListStateCopyWith<$Res> {
  _$FoodListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodListState = null,
  }) {
    return _then(_value.copyWith(
      foodListState: null == foodListState
          ? _value.foodListState
          : foodListState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<List<Food>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodListStateCopyWith<$Res>
    implements $FoodListStateCopyWith<$Res> {
  factory _$$_FoodListStateCopyWith(
          _$_FoodListState value, $Res Function(_$_FoodListState) then) =
      __$$_FoodListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewDataState<List<Food>> foodListState});
}

/// @nodoc
class __$$_FoodListStateCopyWithImpl<$Res>
    extends _$FoodListStateCopyWithImpl<$Res, _$_FoodListState>
    implements _$$_FoodListStateCopyWith<$Res> {
  __$$_FoodListStateCopyWithImpl(
      _$_FoodListState _value, $Res Function(_$_FoodListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodListState = null,
  }) {
    return _then(_$_FoodListState(
      foodListState: null == foodListState
          ? _value.foodListState
          : foodListState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<List<Food>>,
    ));
  }
}

/// @nodoc

class _$_FoodListState implements _FoodListState {
  const _$_FoodListState({required this.foodListState});

  @override
  final ViewDataState<List<Food>> foodListState;

  @override
  String toString() {
    return 'FoodListState(foodListState: $foodListState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodListState &&
            (identical(other.foodListState, foodListState) ||
                other.foodListState == foodListState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodListState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodListStateCopyWith<_$_FoodListState> get copyWith =>
      __$$_FoodListStateCopyWithImpl<_$_FoodListState>(this, _$identity);
}

abstract class _FoodListState implements FoodListState {
  const factory _FoodListState(
          {required final ViewDataState<List<Food>> foodListState}) =
      _$_FoodListState;

  @override
  ViewDataState<List<Food>> get foodListState;
  @override
  @JsonKey(ignore: true)
  _$$_FoodListStateCopyWith<_$_FoodListState> get copyWith =>
      throw _privateConstructorUsedError;
}

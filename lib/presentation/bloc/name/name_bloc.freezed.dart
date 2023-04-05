// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getName,
    required TResult Function(String name) setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getName,
    TResult? Function(String name)? setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getName,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetName value) getName,
    required TResult Function(SetName value) setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetName value)? getName,
    TResult? Function(SetName value)? setName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetName value)? getName,
    TResult Function(SetName value)? setName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameEventCopyWith<$Res> {
  factory $NameEventCopyWith(NameEvent value, $Res Function(NameEvent) then) =
      _$NameEventCopyWithImpl<$Res, NameEvent>;
}

/// @nodoc
class _$NameEventCopyWithImpl<$Res, $Val extends NameEvent>
    implements $NameEventCopyWith<$Res> {
  _$NameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNameCopyWith<$Res> {
  factory _$$GetNameCopyWith(_$GetName value, $Res Function(_$GetName) then) =
      __$$GetNameCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNameCopyWithImpl<$Res>
    extends _$NameEventCopyWithImpl<$Res, _$GetName>
    implements _$$GetNameCopyWith<$Res> {
  __$$GetNameCopyWithImpl(_$GetName _value, $Res Function(_$GetName) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetName implements GetName {
  const _$GetName();

  @override
  String toString() {
    return 'NameEvent.getName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getName,
    required TResult Function(String name) setName,
  }) {
    return getName();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getName,
    TResult? Function(String name)? setName,
  }) {
    return getName?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getName,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) {
    if (getName != null) {
      return getName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetName value) getName,
    required TResult Function(SetName value) setName,
  }) {
    return getName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetName value)? getName,
    TResult? Function(SetName value)? setName,
  }) {
    return getName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetName value)? getName,
    TResult Function(SetName value)? setName,
    required TResult orElse(),
  }) {
    if (getName != null) {
      return getName(this);
    }
    return orElse();
  }
}

abstract class GetName implements NameEvent {
  const factory GetName() = _$GetName;
}

/// @nodoc
abstract class _$$SetNameCopyWith<$Res> {
  factory _$$SetNameCopyWith(_$SetName value, $Res Function(_$SetName) then) =
      __$$SetNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SetNameCopyWithImpl<$Res>
    extends _$NameEventCopyWithImpl<$Res, _$SetName>
    implements _$$SetNameCopyWith<$Res> {
  __$$SetNameCopyWithImpl(_$SetName _value, $Res Function(_$SetName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SetName(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetName implements SetName {
  const _$SetName({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'NameEvent.setName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNameCopyWith<_$SetName> get copyWith =>
      __$$SetNameCopyWithImpl<_$SetName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getName,
    required TResult Function(String name) setName,
  }) {
    return setName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getName,
    TResult? Function(String name)? setName,
  }) {
    return setName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getName,
    TResult Function(String name)? setName,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetName value) getName,
    required TResult Function(SetName value) setName,
  }) {
    return setName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetName value)? getName,
    TResult? Function(SetName value)? setName,
  }) {
    return setName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetName value)? getName,
    TResult Function(SetName value)? setName,
    required TResult orElse(),
  }) {
    if (setName != null) {
      return setName(this);
    }
    return orElse();
  }
}

abstract class SetName implements NameEvent {
  const factory SetName({required final String name}) = _$SetName;

  String get name;
  @JsonKey(ignore: true)
  _$$SetNameCopyWith<_$SetName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NameState {
  ViewDataState<String> get nameState => throw _privateConstructorUsedError;
  ViewDataState<bool> get setNameState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameStateCopyWith<NameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameStateCopyWith<$Res> {
  factory $NameStateCopyWith(NameState value, $Res Function(NameState) then) =
      _$NameStateCopyWithImpl<$Res, NameState>;
  @useResult
  $Res call(
      {ViewDataState<String> nameState, ViewDataState<bool> setNameState});
}

/// @nodoc
class _$NameStateCopyWithImpl<$Res, $Val extends NameState>
    implements $NameStateCopyWith<$Res> {
  _$NameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameState = null,
    Object? setNameState = null,
  }) {
    return _then(_value.copyWith(
      nameState: null == nameState
          ? _value.nameState
          : nameState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<String>,
      setNameState: null == setNameState
          ? _value.setNameState
          : setNameState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NameStateCopyWith<$Res> implements $NameStateCopyWith<$Res> {
  factory _$$_NameStateCopyWith(
          _$_NameState value, $Res Function(_$_NameState) then) =
      __$$_NameStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewDataState<String> nameState, ViewDataState<bool> setNameState});
}

/// @nodoc
class __$$_NameStateCopyWithImpl<$Res>
    extends _$NameStateCopyWithImpl<$Res, _$_NameState>
    implements _$$_NameStateCopyWith<$Res> {
  __$$_NameStateCopyWithImpl(
      _$_NameState _value, $Res Function(_$_NameState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameState = null,
    Object? setNameState = null,
  }) {
    return _then(_$_NameState(
      nameState: null == nameState
          ? _value.nameState
          : nameState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<String>,
      setNameState: null == setNameState
          ? _value.setNameState
          : setNameState // ignore: cast_nullable_to_non_nullable
              as ViewDataState<bool>,
    ));
  }
}

/// @nodoc

class _$_NameState implements _NameState {
  const _$_NameState({required this.nameState, required this.setNameState});

  @override
  final ViewDataState<String> nameState;
  @override
  final ViewDataState<bool> setNameState;

  @override
  String toString() {
    return 'NameState(nameState: $nameState, setNameState: $setNameState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameState &&
            (identical(other.nameState, nameState) ||
                other.nameState == nameState) &&
            (identical(other.setNameState, setNameState) ||
                other.setNameState == setNameState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameState, setNameState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameStateCopyWith<_$_NameState> get copyWith =>
      __$$_NameStateCopyWithImpl<_$_NameState>(this, _$identity);
}

abstract class _NameState implements NameState {
  const factory _NameState(
      {required final ViewDataState<String> nameState,
      required final ViewDataState<bool> setNameState}) = _$_NameState;

  @override
  ViewDataState<String> get nameState;
  @override
  ViewDataState<bool> get setNameState;
  @override
  @JsonKey(ignore: true)
  _$$_NameStateCopyWith<_$_NameState> get copyWith =>
      throw _privateConstructorUsedError;
}

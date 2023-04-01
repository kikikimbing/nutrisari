// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'serving_sizes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServingSizesModel _$ServingSizesModelFromJson(Map<String, dynamic> json) {
  return _ServingSizesModel.fromJson(json);
}

/// @nodoc
mixin _$ServingSizesModel {
  String? get uri => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServingSizesModelCopyWith<ServingSizesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServingSizesModelCopyWith<$Res> {
  factory $ServingSizesModelCopyWith(
          ServingSizesModel value, $Res Function(ServingSizesModel) then) =
      _$ServingSizesModelCopyWithImpl<$Res, ServingSizesModel>;
  @useResult
  $Res call({String? uri, String? label, int? quantity});
}

/// @nodoc
class _$ServingSizesModelCopyWithImpl<$Res, $Val extends ServingSizesModel>
    implements $ServingSizesModelCopyWith<$Res> {
  _$ServingSizesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? label = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServingSizesModelCopyWith<$Res>
    implements $ServingSizesModelCopyWith<$Res> {
  factory _$$_ServingSizesModelCopyWith(_$_ServingSizesModel value,
          $Res Function(_$_ServingSizesModel) then) =
      __$$_ServingSizesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uri, String? label, int? quantity});
}

/// @nodoc
class __$$_ServingSizesModelCopyWithImpl<$Res>
    extends _$ServingSizesModelCopyWithImpl<$Res, _$_ServingSizesModel>
    implements _$$_ServingSizesModelCopyWith<$Res> {
  __$$_ServingSizesModelCopyWithImpl(
      _$_ServingSizesModel _value, $Res Function(_$_ServingSizesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
    Object? label = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_ServingSizesModel(
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServingSizesModel implements _ServingSizesModel {
  const _$_ServingSizesModel({this.uri, this.label, this.quantity});

  factory _$_ServingSizesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServingSizesModelFromJson(json);

  @override
  final String? uri;
  @override
  final String? label;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'ServingSizesModel(uri: $uri, label: $label, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServingSizesModel &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uri, label, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServingSizesModelCopyWith<_$_ServingSizesModel> get copyWith =>
      __$$_ServingSizesModelCopyWithImpl<_$_ServingSizesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServingSizesModelToJson(
      this,
    );
  }
}

abstract class _ServingSizesModel implements ServingSizesModel {
  const factory _ServingSizesModel(
      {final String? uri,
      final String? label,
      final int? quantity}) = _$_ServingSizesModel;

  factory _ServingSizesModel.fromJson(Map<String, dynamic> json) =
      _$_ServingSizesModel.fromJson;

  @override
  String? get uri;
  @override
  String? get label;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ServingSizesModelCopyWith<_$_ServingSizesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

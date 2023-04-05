// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) {
  return _FoodModel.fromJson(json);
}

/// @nodoc
mixin _$FoodModel {
  String? get foodId => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get knownAs => throw _privateConstructorUsedError;
  NutrientsModel? get nutrients => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get categoryLabel => throw _privateConstructorUsedError;
  String? get foodContentsLabel => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<ServingSizesModel>? get servingSizes =>
      throw _privateConstructorUsedError;
  double? get servingsPerContainer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodModelCopyWith<FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodModelCopyWith<$Res> {
  factory $FoodModelCopyWith(FoodModel value, $Res Function(FoodModel) then) =
      _$FoodModelCopyWithImpl<$Res, FoodModel>;
  @useResult
  $Res call(
      {String? foodId,
      String? label,
      String? knownAs,
      NutrientsModel? nutrients,
      String? brand,
      String? category,
      String? categoryLabel,
      String? foodContentsLabel,
      String? image,
      List<ServingSizesModel>? servingSizes,
      double? servingsPerContainer});

  $NutrientsModelCopyWith<$Res>? get nutrients;
}

/// @nodoc
class _$FoodModelCopyWithImpl<$Res, $Val extends FoodModel>
    implements $FoodModelCopyWith<$Res> {
  _$FoodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = freezed,
    Object? label = freezed,
    Object? knownAs = freezed,
    Object? nutrients = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? categoryLabel = freezed,
    Object? foodContentsLabel = freezed,
    Object? image = freezed,
    Object? servingSizes = freezed,
    Object? servingsPerContainer = freezed,
  }) {
    return _then(_value.copyWith(
      foodId: freezed == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      knownAs: freezed == knownAs
          ? _value.knownAs
          : knownAs // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrients: freezed == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryLabel: freezed == categoryLabel
          ? _value.categoryLabel
          : categoryLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      foodContentsLabel: freezed == foodContentsLabel
          ? _value.foodContentsLabel
          : foodContentsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      servingSizes: freezed == servingSizes
          ? _value.servingSizes
          : servingSizes // ignore: cast_nullable_to_non_nullable
              as List<ServingSizesModel>?,
      servingsPerContainer: freezed == servingsPerContainer
          ? _value.servingsPerContainer
          : servingsPerContainer // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NutrientsModelCopyWith<$Res>? get nutrients {
    if (_value.nutrients == null) {
      return null;
    }

    return $NutrientsModelCopyWith<$Res>(_value.nutrients!, (value) {
      return _then(_value.copyWith(nutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FoodModelCopyWith<$Res> implements $FoodModelCopyWith<$Res> {
  factory _$$_FoodModelCopyWith(
          _$_FoodModel value, $Res Function(_$_FoodModel) then) =
      __$$_FoodModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? foodId,
      String? label,
      String? knownAs,
      NutrientsModel? nutrients,
      String? brand,
      String? category,
      String? categoryLabel,
      String? foodContentsLabel,
      String? image,
      List<ServingSizesModel>? servingSizes,
      double? servingsPerContainer});

  @override
  $NutrientsModelCopyWith<$Res>? get nutrients;
}

/// @nodoc
class __$$_FoodModelCopyWithImpl<$Res>
    extends _$FoodModelCopyWithImpl<$Res, _$_FoodModel>
    implements _$$_FoodModelCopyWith<$Res> {
  __$$_FoodModelCopyWithImpl(
      _$_FoodModel _value, $Res Function(_$_FoodModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodId = freezed,
    Object? label = freezed,
    Object? knownAs = freezed,
    Object? nutrients = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? categoryLabel = freezed,
    Object? foodContentsLabel = freezed,
    Object? image = freezed,
    Object? servingSizes = freezed,
    Object? servingsPerContainer = freezed,
  }) {
    return _then(_$_FoodModel(
      foodId: freezed == foodId
          ? _value.foodId
          : foodId // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      knownAs: freezed == knownAs
          ? _value.knownAs
          : knownAs // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrients: freezed == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as NutrientsModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryLabel: freezed == categoryLabel
          ? _value.categoryLabel
          : categoryLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      foodContentsLabel: freezed == foodContentsLabel
          ? _value.foodContentsLabel
          : foodContentsLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      servingSizes: freezed == servingSizes
          ? _value._servingSizes
          : servingSizes // ignore: cast_nullable_to_non_nullable
              as List<ServingSizesModel>?,
      servingsPerContainer: freezed == servingsPerContainer
          ? _value.servingsPerContainer
          : servingsPerContainer // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodModel implements _FoodModel {
  const _$_FoodModel(
      {this.foodId,
      this.label,
      this.knownAs,
      this.nutrients,
      this.brand,
      this.category,
      this.categoryLabel,
      this.foodContentsLabel,
      this.image,
      final List<ServingSizesModel>? servingSizes,
      this.servingsPerContainer})
      : _servingSizes = servingSizes;

  factory _$_FoodModel.fromJson(Map<String, dynamic> json) =>
      _$$_FoodModelFromJson(json);

  @override
  final String? foodId;
  @override
  final String? label;
  @override
  final String? knownAs;
  @override
  final NutrientsModel? nutrients;
  @override
  final String? brand;
  @override
  final String? category;
  @override
  final String? categoryLabel;
  @override
  final String? foodContentsLabel;
  @override
  final String? image;
  final List<ServingSizesModel>? _servingSizes;
  @override
  List<ServingSizesModel>? get servingSizes {
    final value = _servingSizes;
    if (value == null) return null;
    if (_servingSizes is EqualUnmodifiableListView) return _servingSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? servingsPerContainer;

  @override
  String toString() {
    return 'FoodModel(foodId: $foodId, label: $label, knownAs: $knownAs, nutrients: $nutrients, brand: $brand, category: $category, categoryLabel: $categoryLabel, foodContentsLabel: $foodContentsLabel, image: $image, servingSizes: $servingSizes, servingsPerContainer: $servingsPerContainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodModel &&
            (identical(other.foodId, foodId) || other.foodId == foodId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.knownAs, knownAs) || other.knownAs == knownAs) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryLabel, categoryLabel) ||
                other.categoryLabel == categoryLabel) &&
            (identical(other.foodContentsLabel, foodContentsLabel) ||
                other.foodContentsLabel == foodContentsLabel) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._servingSizes, _servingSizes) &&
            (identical(other.servingsPerContainer, servingsPerContainer) ||
                other.servingsPerContainer == servingsPerContainer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foodId,
      label,
      knownAs,
      nutrients,
      brand,
      category,
      categoryLabel,
      foodContentsLabel,
      image,
      const DeepCollectionEquality().hash(_servingSizes),
      servingsPerContainer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodModelCopyWith<_$_FoodModel> get copyWith =>
      __$$_FoodModelCopyWithImpl<_$_FoodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodModelToJson(
      this,
    );
  }
}

abstract class _FoodModel implements FoodModel {
  const factory _FoodModel(
      {final String? foodId,
      final String? label,
      final String? knownAs,
      final NutrientsModel? nutrients,
      final String? brand,
      final String? category,
      final String? categoryLabel,
      final String? foodContentsLabel,
      final String? image,
      final List<ServingSizesModel>? servingSizes,
      final double? servingsPerContainer}) = _$_FoodModel;

  factory _FoodModel.fromJson(Map<String, dynamic> json) =
      _$_FoodModel.fromJson;

  @override
  String? get foodId;
  @override
  String? get label;
  @override
  String? get knownAs;
  @override
  NutrientsModel? get nutrients;
  @override
  String? get brand;
  @override
  String? get category;
  @override
  String? get categoryLabel;
  @override
  String? get foodContentsLabel;
  @override
  String? get image;
  @override
  List<ServingSizesModel>? get servingSizes;
  @override
  double? get servingsPerContainer;
  @override
  @JsonKey(ignore: true)
  _$$_FoodModelCopyWith<_$_FoodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FoodModel _$$_FoodModelFromJson(Map<String, dynamic> json) => _$_FoodModel(
      foodId: json['foodId'] as String?,
      label: json['label'] as String?,
      knownAs: json['knownAs'] as String?,
      nutrients: json['nutrients'] == null
          ? null
          : NutrientsModel.fromJson(json['nutrients'] as Map<String, dynamic>),
      brand: json['brand'] as String?,
      category: json['category'] as String?,
      categoryLabel: json['categoryLabel'] as String?,
      foodContentsLabel: json['foodContentsLabel'] as String?,
      image: json['image'] as String?,
      servingSizes: (json['servingSizes'] as List<dynamic>?)
          ?.map((e) => ServingSizesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      servingsPerContainer: (json['servingsPerContainer'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FoodModelToJson(_$_FoodModel instance) =>
    <String, dynamic>{
      'foodId': instance.foodId,
      'label': instance.label,
      'knownAs': instance.knownAs,
      'nutrients': instance.nutrients,
      'brand': instance.brand,
      'category': instance.category,
      'categoryLabel': instance.categoryLabel,
      'foodContentsLabel': instance.foodContentsLabel,
      'image': instance.image,
      'servingSizes': instance.servingSizes,
      'servingsPerContainer': instance.servingsPerContainer,
    };

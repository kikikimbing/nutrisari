// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrients_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutrientsModel _$$_NutrientsModelFromJson(Map<String, dynamic> json) =>
    _$_NutrientsModel(
      enercKcal: json['ENERC_KCAL'] as int?,
      procnt: (json['PROCNT'] as num?)?.toDouble(),
      fat: (json['FAT'] as num?)?.toDouble(),
      chocdf: (json['CHOCDF'] as num?)?.toDouble(),
      fitbtg: (json['FIBTG'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_NutrientsModelToJson(_$_NutrientsModel instance) =>
    <String, dynamic>{
      'ENERC_KCAL': instance.enercKcal,
      'PROCNT': instance.procnt,
      'FAT': instance.fat,
      'CHOCDF': instance.chocdf,
      'FIBTG': instance.fitbtg,
    };

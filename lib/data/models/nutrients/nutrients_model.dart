import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrients_model.freezed.dart';
part 'nutrients_model.g.dart';

@freezed
class NutrientsModel with _$NutrientsModel {
  const factory NutrientsModel({
    @JsonKey(name: "ENERC_KCAL") double? enercKcal,
    @JsonKey(name: "PROCNT") double? procnt,
    @JsonKey(name: "FAT") double? fat,
    @JsonKey(name: "CHOCDF") double? chocdf,
    @JsonKey(name: "FIBTG") double? fitbtg,
  }) = _NutrientsModel;

  factory NutrientsModel.fromJson(Map<String, dynamic> json) =>
      _$NutrientsModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrisari/data/models/nutrients/nutrients_model.dart';
import 'package:nutrisari/data/models/serving_sizes/serving_sizes_model.dart';

part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
class FoodModel with _$FoodModel {
  const factory FoodModel({
    String? foodId,
    String? label,
    String? knownAs,
    NutrientsModel? nutrients,
    String? brand,
    String? category,
    String? categoryLabel,
    String? foodContentsLabel,
    String? image,
    List<ServingSizesModel>? servingSizes,
    int? servingsPerContainer,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);
}

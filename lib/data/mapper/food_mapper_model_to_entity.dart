import 'package:nutrisari/data/models/food/food_model.dart';
import 'package:nutrisari/data/models/nutrients/nutrients_model.dart';
import 'package:nutrisari/data/models/serving_sizes/serving_sizes_model.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/entities/nutrients.dart';
import 'package:nutrisari/domain/entities/serving_sizes.dart';

class FoodMapperModelToEntity {
  static List<Food> mapFoodListModelToFoodList({
    List<FoodModel>? model,
  }) =>
      model
          ?.map(
            (food) => mapFoodModelToFood(model: food),
          )
          .toList() ??
      [];

  static Food mapFoodModelToFood({
    FoodModel? model,
  }) =>
      Food(
        foodId: model?.foodId ?? "",
        label: model?.label ?? "",
        knownAs: model?.knownAs ?? "",
        brand: model?.brand ?? "",
        category: model?.category ?? "",
        categoryLabel: model?.categoryLabel ?? "",
        foodContentsLabel: model?.foodContentsLabel ?? "",
        image: model?.image ?? "",
        nutrients: mapNutrientsModelToNutrients(model: model?.nutrients),
        servingSizes: mapListServingSizesModelToListServingSize(
          model: model?.servingSizes,
        ),
        servingsPerContainer: model?.servingsPerContainer ?? 0,
      );

  static Nutrients mapNutrientsModelToNutrients({
    NutrientsModel? model,
  }) =>
      Nutrients(
        enercKcal: model?.enercKcal ?? 0,
        procnt: model?.procnt ?? 0.0,
        fat: model?.fat ?? 0.0,
        chocdf: model?.chocdf ?? 0.0,
        fitbtg: model?.fitbtg ?? 0.0,
      );

  static List<ServingSizes> mapListServingSizesModelToListServingSize({
    List<ServingSizesModel>? model,
  }) =>
      model
          ?.map(
            (serving) => mapServingSizesModelToServingSize(model: serving),
          )
          .toList() ??
      [];

  static ServingSizes mapServingSizesModelToServingSize({
    ServingSizesModel? model,
  }) =>
      ServingSizes(
        uri: model?.uri ?? "",
        label: model?.label ?? "",
        quantity: model?.quantity ?? 0,
      );
}

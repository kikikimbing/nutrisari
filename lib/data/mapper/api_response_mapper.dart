import 'package:nutrisari/data/models/food/food_model.dart';

class ApiResponseMapper {
  static FoodModel mapApiFoodDetailJsonToModel({
    required Map<String, dynamic> data,
  }) =>
      mapApiFoodListJsonToModel(data: data)[0];

  static List<FoodModel> mapApiFoodListJsonToModel({
    required Map<String, dynamic> data,
  }) {
    final result = List<FoodModel>.from(
      data['hints']?.map(
            (food) => FoodModel.fromJson(food["food"]),
          ) ??
          [],
    );

    return result;
  }
}

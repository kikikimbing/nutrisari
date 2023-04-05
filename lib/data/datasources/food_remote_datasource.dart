import 'package:nutrisari/core/networking/networking.dart';
import 'package:nutrisari/data/mapper/api_response_mapper.dart';
import 'package:nutrisari/data/models/food/food_model.dart';

abstract class FoodRemoteDataSource {
  Future<List<FoodModel>> getFoodListByName({
    required String foodName,
  });

  Future<FoodModel> getFoodDetailById({
    required String foodId,
  });
}

class FoodRemoteDataSourceImpl implements FoodRemoteDataSource {
  final Networking networking;

  FoodRemoteDataSourceImpl({
    required this.networking,
  });

  @override
  Future<List<FoodModel>> getFoodListByName({
    required String foodName,
  }) async {
    final response = await networking.getRequest(params: foodName);

    return ApiResponseMapper.mapApiFoodListJsonToModel(
      data: response.data,
    );
  }

  @override
  Future<FoodModel> getFoodDetailById({
    required String foodId,
  }) async {
    final response = await networking.getRequest(params: foodId);

    return ApiResponseMapper.mapApiFoodDetailJsonToModel(
      data: response.data,
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/data/mapper/food_mapper_model_to_entity.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodRemoteDataSource foodRemoteDataSource;

  FoodRepositoryImpl({
    required this.foodRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<Food>>> getFoodListByName({
    required String foodName,
  }) =>
      TaskEither.tryCatch(
        () async {
          final result = await foodRemoteDataSource.getFoodListByName(
            foodName: foodName,
          );
          return FoodMapperModelToEntity.mapFoodListModelToFoodList(
            model: result,
          );
        },
        (error, __) {
          debugPrint(error.toString());
          return ServerFailure();
        },
      ).run();

  @override
  Future<Either<Failure, Food>> getFoodDetailById({
    required String foodId,
  }) =>
      TaskEither.tryCatch(
        () async {
          final result = await foodRemoteDataSource.getFoodDetailById(
            foodId: foodId,
          );
          return FoodMapperModelToEntity.mapFoodModelToFood(
            model: result,
          );
        },
        (_, __) => ServerFailure(),
      ).run();
}

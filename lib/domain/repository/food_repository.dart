import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/domain/entities/food.dart';

abstract class FoodRepository {
  Future<Either<Failure, List<Food>>> getFoodListByName({
    required String foodName,
  });

  Future<Either<Failure, Food>> getFoodDetailById({
    required String foodId,
  });
}

import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/usecase/usecase.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';

class GetFoodListUseCase implements UseCase<List<Food>, String> {
  final FoodRepository foodRepository;

  const GetFoodListUseCase({
    required this.foodRepository,
  });

  @override
  Future<Either<Failure, List<Food>>> call(String foodName) async =>
      await foodRepository.getFoodListByName(foodName: foodName);
}

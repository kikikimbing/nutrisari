import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/usecase/usecase.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';

class GetFoodDetailUseCase implements UseCase<Food, String> {
  final FoodRepository foodRepository;

  const GetFoodDetailUseCase({
    required this.foodRepository,
  });

  @override
  Future<Either<Failure, Food>> call(String foodId) async =>
      await foodRepository.getFoodDetailById(foodId: foodId);
}

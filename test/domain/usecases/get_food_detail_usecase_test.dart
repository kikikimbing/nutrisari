import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';
import 'package:nutrisari/domain/usecases/get_food_detail_usecase.dart';

import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late GetFoodDetailUseCase getFoodDetailUseCase;
  late FoodRepository mockFoodRepository;
  const testString = "foodxyz";

  setUp(() {
    mockFoodRepository = MockFoodRepository();
    getFoodDetailUseCase =
        GetFoodDetailUseCase(foodRepository: mockFoodRepository);
  });

  group("GetFoodDetail UseCase", () {
    test(
        'Given FoodRepository'
        'When FoodRepository call getFoodDetailById'
        'Then return Food detail data', () async {
      when(mockFoodRepository.getFoodDetailById(foodId: testString))
          .thenAnswer((_) async => const Right(testFood));

      final result = await getFoodDetailUseCase.call(testString);

      expect(result, const Right(testFood));
    });

    test(
        'Given FoodRepository'
        'When FoodRepository call getFoodDetailById'
        'Then return failure', () async {
      when(mockFoodRepository.getFoodDetailById(foodId: testString))
          .thenAnswer((_) async => Left(ServerFailure()));

      final result = await getFoodDetailUseCase.call(testString);

      expect(result, Left(ServerFailure()));
    });
  });
}

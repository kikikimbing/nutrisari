import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';

import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late GetFoodListUseCase getFoodListUseCase;
  late FoodRepository mockFoodRepository;
  const testString = "foodxyz";

  setUp(() {
    mockFoodRepository = MockFoodRepository();
    getFoodListUseCase = GetFoodListUseCase(foodRepository: mockFoodRepository);
  });

  group("GetFoodList UseCase", () {
    test(
        'Given FoodRepository'
        'When FoodRepository call getFoodListByName'
        'Then return Food detail data', () async {
      when(mockFoodRepository.getFoodListByName(foodName: testString))
          .thenAnswer((_) async => const Right(testListFood));

      final result = await getFoodListUseCase.call(testString);

      expect(result, const Right(testListFood));
    });

    test(
        'Given FoodRepository'
        'When FoodRepository call getFoodListByName'
        'Then return failure', () async {
      when(mockFoodRepository.getFoodListByName(foodName: testString))
          .thenAnswer((_) async => Left(ServerFailure()));

      final result = await getFoodListUseCase.call(testString);

      expect(result, Left(ServerFailure()));
    });
  });
}

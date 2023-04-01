import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/exceptions.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/data/repositories/food_repository_impl.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';

import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/dummy_data/food_dummy_data_model.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late FoodRepository foodRepository;
  late FoodRemoteDataSource mockFoodRemoteDataSource;
  const testString = "foodxyz";

  setUp(() {
    mockFoodRemoteDataSource = MockFoodRemoteDataSource();
    foodRepository = FoodRepositoryImpl(
      foodRemoteDataSource: mockFoodRemoteDataSource,
    );
  });

  group('getFoodListByName', () {
    test(
      'Given foodRepository '
      'When foodRepository call getFoodListByName '
      'Then return valid list of Food entity',
      () async {
        /// Given
        when(mockFoodRemoteDataSource.getFoodListByName(foodName: testString))
            .thenAnswer((_) async => testListFoodModel);

        /// When
        final result =
            await foodRepository.getFoodListByName(foodName: testString);

        /// Then
        verify(
          mockFoodRemoteDataSource.getFoodListByName(foodName: testString),
        );
        expect(result, isA<Right>());
      },
    );

    test(
      'Given foodRepository '
      'When foodRepository call getFoodListByName '
      'Then return ServerFailure()',
      () async {
        /// Given
        when(mockFoodRemoteDataSource.getFoodListByName(foodName: testString))
            .thenThrow(ServerException());

        /// When
        final result =
            await foodRepository.getFoodListByName(foodName: testString);

        /// Then
        expect(result, equals(Left(ServerFailure())));
      },
    );
  });
}

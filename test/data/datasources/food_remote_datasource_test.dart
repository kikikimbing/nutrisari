import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/data/mapper/api_response_mapper.dart';

import '../../helper/json_reader.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late FoodRemoteDataSource foodRemoteDataSource;
  late MockNetworking mockNetworking;

  setUp(() {
    mockNetworking = MockNetworking();
    foodRemoteDataSource = FoodRemoteDataSourceImpl(
      networking: mockNetworking,
    );
  });

  group('Get List Food By Name', () {
    const testFoodName = "kebab";
    final foodListJson = json.decode(
      readJson('helper/dummy_data/food_list.json'),
    );
    final foodEmptyListJson = json.decode(
      readJson('helper/dummy_data/food_list_empty.json'),
    );

    final testFoodListModel =
        ApiResponseMapper.mapApiFoodListJsonToModel(data: foodListJson);
    final testEmptyFoodListModel =
        ApiResponseMapper.mapApiFoodListJsonToModel(data: foodEmptyListJson);
    test(
      'Given list food API '
      'When foodRemoteDataSource call getFoodListByName '
      'Then return list of food model',
      () async {
        /// Given
        when(mockNetworking.getRequest(params: testFoodName)).thenAnswer(
          (_) async => foodListJson,
        );

        /// When
        final result = await foodRemoteDataSource.getFoodListByName(
            foodName: testFoodName);

        /// Then
        expect(result, testFoodListModel);
      },
    );

    test(
      'Given list food API '
      'When foodRemoteDataSource call getFoodListByName '
      'Then return empty list of food model',
      () async {
        /// Given
        when(mockNetworking.getRequest(params: testFoodName)).thenAnswer(
          (_) async => foodEmptyListJson,
        );

        /// When
        final result = await foodRemoteDataSource.getFoodListByName(
            foodName: testFoodName);

        /// Then
        expect(result, testEmptyFoodListModel);
      },
    );
  });

  group('Get Food Detail By Id', () {
    const testFoodId = "kebab123";

    final foodDetailJson = json.decode(
      readJson('helper/dummy_data/food_detail.json'),
    );

    final testFoodDetailModel =
        ApiResponseMapper.mapApiFoodDetailJsonToModel(data: foodDetailJson);
    test(
      'Given list food API '
      'When foodRemoteDataSource call getFoodDetailById '
      'Then return list of food model',
      () async {
        /// Given
        when(mockNetworking.getRequest(params: testFoodId)).thenAnswer(
          (_) async => foodDetailJson,
        );

        /// When
        final result =
            await foodRemoteDataSource.getFoodDetailById(foodId: testFoodId);

        /// Then
        expect(result, testFoodDetailModel);
      },
    );
  });
}

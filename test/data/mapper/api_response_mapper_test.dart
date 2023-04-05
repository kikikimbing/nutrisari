import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:nutrisari/data/mapper/api_response_mapper.dart';
import 'package:nutrisari/data/models/food/food_model.dart';

import '../../helper/json_reader.dart';

void main() {
  test(
    'Given Food List JSON Respone '
    'When ApiResponseMapper call mapApiFoodListJsonToModel '
    'Then retunr list of Food Model',
    () async {
      /// Given
      final foodListJson = json.decode(
        readJson('helper/dummy_data/food_list.json'),
      );

      /// When
      final result =
          ApiResponseMapper.mapApiFoodListJsonToModel(data: foodListJson);

      /// Then
      expect(result, isA<List<FoodModel>>());
    },
  );
}

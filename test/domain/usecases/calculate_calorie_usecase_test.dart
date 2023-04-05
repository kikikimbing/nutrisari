import 'package:flutter_test/flutter_test.dart';
import 'package:nutrisari/domain/usecases/calculate_calorie_usecase.dart';

void main() {
  late CalculateCalorieUseCase calculateCalorieUseCase;

  setUp(() {
    calculateCalorieUseCase = const CalculateCalorieUseCase();
  });

  group("CalculateCalorie UseCase", () {
    const testParams = CalorieParams(age: 10, height: 10, weight: 10);

    test('Calculate Calories', () {
      final result = calculateCalorieUseCase.call(testParams);

      expect(result, 185);
    });
  });
}

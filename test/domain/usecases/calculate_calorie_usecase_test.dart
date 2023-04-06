import 'package:flutter_test/flutter_test.dart';
import 'package:nutrisari/domain/usecases/calculate_calorie_usecase.dart';

void main() {
  late CalculateCalorieUseCase calculateCalorieUseCase;
  const testParams = CalorieParams(age: 10, height: 10, weight: 10);

  setUp(() {
    calculateCalorieUseCase = const CalculateCalorieUseCase();
  });

  group('Calorie Params', () {
    test(
      'Given age, weight, height data '
      'When CalorieParams initialized '
      'Then return valid props',
      () async {
        const calorieParams = CalorieParams(age: 10, height: 10, weight: 10);
        expect(testParams.props, calorieParams.props);
      },
    );
  });

  group("CalculateCalorie UseCase", () {
    test('Calculate Calories', () {
      final result = calculateCalorieUseCase.call(testParams);

      expect(result, 185);
    });
  });
}

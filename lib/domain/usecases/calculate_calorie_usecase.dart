import 'package:equatable/equatable.dart';

class CalculateCalorieUseCase {
  const CalculateCalorieUseCase();

  double call(CalorieParams params) =>
      66 + (13.7 * params.weight) + (5 * params.height) - (6.8 * params.age);
}

class CalorieParams extends Equatable {
  final int age;
  final int height;
  final int weight;

  const CalorieParams({
    required this.age,
    required this.height,
    required this.weight,
  });

  @override
  List<Object?> get props => [
        age,
        height,
        weight,
      ];
}

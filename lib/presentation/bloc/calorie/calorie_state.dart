part of 'calorie_bloc.dart';

@freezed
class CalorieState with _$CalorieState {
  const factory CalorieState({
    required ViewDataState<double> calorieState,
  }) = _CalorieState;
}

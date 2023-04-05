part of 'calorie_bloc.dart';

@freezed
class CalorieEvent with _$CalorieEvent {
  const factory CalorieEvent.calculateCalorie({
    required CalorieParams params,
  }) = CalculateCalorie;
}

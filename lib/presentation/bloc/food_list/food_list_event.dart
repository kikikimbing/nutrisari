part of 'food_list_bloc.dart';

@freezed
class FoodListEvent with _$FoodListEvent {
  const factory FoodListEvent.getFoodList({
    required String foodName,
  }) = GetFoodList;
}

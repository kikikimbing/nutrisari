part of 'food_detail_bloc.dart';

@freezed
class FoodDetailEvent with _$FoodDetailEvent {
  const factory FoodDetailEvent.getFoodDetail({
    required String foodId,
  }) = GetFoodDetail;
}

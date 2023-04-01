part of 'food_detail_bloc.dart';

@freezed
class FoodDetailState with _$FoodDetailState {
  const factory FoodDetailState({
    required ViewDataState<Food> foodDetailState,
  }) = _FoodDetailState;
}

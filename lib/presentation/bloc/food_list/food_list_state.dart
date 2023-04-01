part of 'food_list_bloc.dart';

@freezed
class FoodListState with _$FoodListState {
  const factory FoodListState({
    required ViewDataState<List<Food>> foodListState,
  }) = _FoodListState;
}

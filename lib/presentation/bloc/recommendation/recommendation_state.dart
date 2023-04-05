part of 'recommendation_bloc.dart';

@freezed
class RecommendationState with _$RecommendationState {
  const factory RecommendationState({
    required ViewDataState<List<Food>> recommendationState,
  }) = _RecommendationState;
}

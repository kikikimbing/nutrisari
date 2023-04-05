part of 'recommendation_bloc.dart';

@freezed
class RecommendationEvent with _$RecommendationEvent {
  const factory RecommendationEvent.getRecommendation({
    required String foodName,
  }) = GetRecommendation;
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';

part 'recommendation_event.dart';
part 'recommendation_state.dart';
part 'recommendation_bloc.freezed.dart';

class RecommendationBloc
    extends Bloc<RecommendationEvent, RecommendationState> {
  final GetFoodListUseCase getFoodListUseCase;

  RecommendationBloc({
    required this.getFoodListUseCase,
  }) : super(RecommendationState(
          recommendationState: ViewDataState.initial(),
        )) {
    on<GetRecommendation>(_getRecommendation);
  }

  Future<void> _getRecommendation(
    GetRecommendation event,
    Emitter<RecommendationState> emit,
  ) async {
    emit(
      state.copyWith(
        recommendationState: ViewDataState.loading(),
      ),
    );

    final result = await getFoodListUseCase.call(event.foodName);
    result.fold(
      (failure) => emit(
        state.copyWith(
          recommendationState: ViewDataState.error(
            message: failure.toString(),
            failure: failure,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          recommendationState: ViewDataState.loaded(
            data: success,
          ),
        ),
      ),
    );
  }
}

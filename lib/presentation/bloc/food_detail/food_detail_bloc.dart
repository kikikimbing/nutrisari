import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/usecases/get_food_detail_usecase.dart';

part 'food_detail_event.dart';
part 'food_detail_state.dart';
part 'food_detail_bloc.freezed.dart';

class FoodDetailBloc extends Bloc<FoodDetailEvent, FoodDetailState> {
  final GetFoodDetailUseCase getFoodDetailUseCase;

  FoodDetailBloc({
    required this.getFoodDetailUseCase,
  }) : super(FoodDetailState(
          foodDetailState: ViewDataState.initial(),
        )) {
    on<GetFoodDetail>(_getfoodDetail);
  }

  Future<void> _getfoodDetail(
    GetFoodDetail event,
    Emitter<FoodDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        foodDetailState: ViewDataState.loading(),
      ),
    );
    final result = await getFoodDetailUseCase.call(event.foodId);
    result.fold(
      (failure) => emit(
        state.copyWith(
          foodDetailState: ViewDataState.error(
            message: failure.toString(),
            failure: failure,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          foodDetailState: ViewDataState.loaded(
            data: success,
          ),
        ),
      ),
    );
  }
}

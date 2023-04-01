import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';

part 'food_list_event.dart';
part 'food_list_state.dart';
part 'food_list_bloc.freezed.dart';

class FoodListBloc extends Bloc<FoodListEvent, FoodListState> {
  final GetFoodListUseCase getFoodListUseCase;

  FoodListBloc({
    required this.getFoodListUseCase,
  }) : super(FoodListState(
          foodListState: ViewDataState.initial(),
        )) {
    on<GetFoodList>(_getfoodList);
  }

  Future<void> _getfoodList(
    GetFoodList event,
    Emitter<FoodListState> emit,
  ) async {
    emit(
      state.copyWith(
        foodListState: ViewDataState.loading(),
      ),
    );
    final result = await getFoodListUseCase.call(event.foodName);
    result.fold(
      (failure) => emit(
        state.copyWith(
          foodListState: ViewDataState.error(
            message: failure.toString(),
            failure: failure,
          ),
        ),
      ),
      (success) => emit(
        state.copyWith(
          foodListState: ViewDataState.loaded(
            data: success,
          ),
        ),
      ),
    );
  }
}

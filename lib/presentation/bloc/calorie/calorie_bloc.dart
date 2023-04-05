import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/usecases/calculate_calorie_usecase.dart';

part 'calorie_event.dart';
part 'calorie_state.dart';
part 'calorie_bloc.freezed.dart';

class CalorieBloc extends Bloc<CalorieEvent, CalorieState> {
  final CalculateCalorieUseCase calculateCalorieUseCase;

  CalorieBloc({
    required this.calculateCalorieUseCase,
  }) : super(CalorieState(
          calorieState: ViewDataState.initial(),
        )) {
    on<CalculateCalorie>(_calculateCalorie);
  }

  Future<void> _calculateCalorie(
    CalculateCalorie event,
    Emitter<CalorieState> emit,
  ) async {
    emit(
      state.copyWith(
        calorieState: ViewDataState.loading(),
      ),
    );
    final result = calculateCalorieUseCase.call(event.params);
    emit(
      state.copyWith(
        calorieState: ViewDataState.loaded(
          data: result,
        ),
      ),
    );
  }
}

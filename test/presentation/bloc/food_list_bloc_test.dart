import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';
import 'package:nutrisari/presentation/bloc/food_list/food_list_bloc.dart';
import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late GetFoodListUseCase mockGetFoodListUseCase;
  late FoodListBloc foodListBloc;
  const testString = "foodxyz";

  setUp(() {
    mockGetFoodListUseCase = MockGetFoodListUseCase();
    foodListBloc = FoodListBloc(getFoodListUseCase: mockGetFoodListUseCase);
  });

  group("FoodListBloc", () {
    blocTest<FoodListBloc, FoodListState>(
      'Given GetFoodListUseCase'
      'When GetFoodListUseCase called successfully'
      'Then emit [FoodListState.loading(), FoodListState.loaded()]',
      build: () {
        when(mockGetFoodListUseCase.call(testString))
            .thenAnswer((_) async => const Right(testListFood));
        return foodListBloc;
      },
      act: (FoodListBloc bloc) =>
          bloc.add(const GetFoodList(foodName: testString)),
      expect: () => [
        FoodListState(foodListState: ViewDataState.loading()),
        FoodListState(
          foodListState: ViewDataState.loaded(
            data: testListFood,
          ),
        ),
      ],
    );

    blocTest<FoodListBloc, FoodListState>(
      'Given GetFoodListUseCase'
      'When GetFoodListUseCase call get ServerFailure'
      'Then emit [FoodListState.loading(), FoodListState.error()]',
      build: () {
        when(mockGetFoodListUseCase.call(testString))
            .thenAnswer((_) async => Left(ServerFailure()));
        return foodListBloc;
      },
      act: (FoodListBloc bloc) =>
          bloc.add(const GetFoodList(foodName: testString)),
      expect: () => [
        FoodListState(foodListState: ViewDataState.loading()),
        FoodListState(
          foodListState: ViewDataState.error(
            message: ServerFailure().toString(),
            failure: ServerFailure(),
          ),
        ),
      ],
    );
  });
}

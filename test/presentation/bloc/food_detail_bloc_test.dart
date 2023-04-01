import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/usecases/get_food_detail_usecase.dart';
import 'package:nutrisari/presentation/bloc/food_detail/food_detail_bloc.dart';
import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late GetFoodDetailUseCase mockGetFoodDetailUseCase;
  late FoodDetailBloc foodDetailBloc;
  const String testString = 'foodxyz';

  setUp(() {
    mockGetFoodDetailUseCase = MockGetFoodDetailUseCase();
    foodDetailBloc =
        FoodDetailBloc(getFoodDetailUseCase: mockGetFoodDetailUseCase);
  });

  group("FoodDetailBloc", () {
    blocTest<FoodDetailBloc, FoodDetailState>(
      'Given GetFoodDetailUseCase'
      'When GetFoodDetailUseCase called successfully'
      'Then emit [FoodDetailState.loading(), FoodDetailState.loaded()]',
      build: () {
        when(mockGetFoodDetailUseCase.call(testString))
            .thenAnswer((_) async => const Right(testFood));
        return foodDetailBloc;
      },
      act: (FoodDetailBloc bloc) =>
          bloc.add(const GetFoodDetail(foodId: testString)),
      expect: () => [
        FoodDetailState(foodDetailState: ViewDataState.loading()),
        FoodDetailState(
          foodDetailState: ViewDataState.loaded(
            data: testFood,
          ),
        ),
      ],
    );

    blocTest<FoodDetailBloc, FoodDetailState>(
      'Given GetFoodDetailUseCase'
      'When GetFoodDetailUseCase call get ServerFailure'
      'Then emit [FoodDetailState.loading(), FoodDetailState.error()]',
      build: () {
        when(mockGetFoodDetailUseCase.call(testString))
            .thenAnswer((_) async => Left(ServerFailure()));
        return foodDetailBloc;
      },
      act: (FoodDetailBloc bloc) =>
          bloc.add(const GetFoodDetail(foodId: testString)),
      expect: () => [
        FoodDetailState(foodDetailState: ViewDataState.loading()),
        FoodDetailState(
          foodDetailState: ViewDataState.error(
            message: ServerFailure().toString(),
            failure: ServerFailure(),
          ),
        ),
      ],
    );
  });
}

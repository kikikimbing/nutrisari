import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/usecase/usecase.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';
import 'package:nutrisari/domain/usecases/get_name_usecase.dart';

import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late GetNameUseCase getNameUseCase;
  late NameRepository mockNameRepository;

  setUp(() {
    mockNameRepository = MockNameRepository();
    getNameUseCase = GetNameUseCase(nameRepository: mockNameRepository);
  });

  group("GetName UseCase", () {
    test(
        'Given NameRepository'
        'When NameRepository call GetName'
        'Then return Name detail data', () async {
      when(mockNameRepository.getName())
          .thenAnswer((_) async => const Right(testString));

      final result = await getNameUseCase.call(const NoParams());

      expect(result, const Right(testString));
    });

    test(
        'Given NameRepository'
        'When NameRepository call GetName'
        'Then return failure', () async {
      when(mockNameRepository.getName())
          .thenAnswer((_) async => Left(ServerFailure()));

      final result = await getNameUseCase.call(const NoParams());

      expect(result, Left(ServerFailure()));
    });
  });
}

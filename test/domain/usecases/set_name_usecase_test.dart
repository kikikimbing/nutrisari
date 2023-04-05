import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/mockito.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';
import 'package:nutrisari/domain/usecases/set_name_usecase.dart';

import '../../helper/dummy_data/food_dummy_data_entity.dart';
import '../../helper/test_helper.mocks.dart';

void main() {
  late SetNameUseCase setNameUseCase;
  late NameRepository mockNameRepository;

  setUp(() {
    mockNameRepository = MockNameRepository();
    setNameUseCase = SetNameUseCase(nameRepository: mockNameRepository);
  });

  group("SetName UseCase", () {
    test(
        'Given NameRepository'
        'When NameRepository call SetName'
        'Then return Name detail data', () async {
      when(mockNameRepository.setName(name: testString))
          .thenAnswer((_) async => const Right(true));

      final result = await setNameUseCase.call(testString);

      expect(result, const Right(true));
    });

    test(
        'Given NameRepository'
        'When NameRepository call SetName'
        'Then return failure', () async {
      when(mockNameRepository.setName(name: testString))
          .thenAnswer((_) async => Left(ServerFailure()));

      final result = await setNameUseCase.call(testString);

      expect(result, Left(ServerFailure()));
    });
  });
}

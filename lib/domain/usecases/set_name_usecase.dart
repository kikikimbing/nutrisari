import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/usecase/usecase.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';

class SetNameUseCase implements UseCase<bool, String> {
  final NameRepository nameRepository;

  const SetNameUseCase({
    required this.nameRepository,
  });

  @override
  Future<Either<Failure, bool>> call(String name) async =>
      await nameRepository.setName(name: name);
}

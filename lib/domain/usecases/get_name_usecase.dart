import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/core/usecase/usecase.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';

class GetNameUseCase implements UseCase<String, NoParams> {
  final NameRepository nameRepository;

  const GetNameUseCase({
    required this.nameRepository,
  });

  @override
  Future<Either<Failure, String>> call(NoParams params) async =>
      await nameRepository.getName();
}

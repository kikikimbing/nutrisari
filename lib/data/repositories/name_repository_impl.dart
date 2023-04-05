import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';
import 'package:nutrisari/data/datasources/name_local_datasource.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';

class NameRepositoryImpl implements NameRepository {
  final NameLocalDataSource nameLocalDataSource;

  NameRepositoryImpl({
    required this.nameLocalDataSource,
  });

  @override
  Future<Either<Failure, String>> getName() => TaskEither.tryCatch(
        () async {
          final result = await nameLocalDataSource.getName();
          return result;
        },
        (_, __) => ServerFailure(),
      ).run();

  @override
  Future<Either<Failure, bool>> setName({required String name}) =>
      TaskEither.tryCatch(
        () async {
          final result = await nameLocalDataSource.setName(name: name);
          return result;
        },
        (_, __) => ServerFailure(),
      ).run();
}

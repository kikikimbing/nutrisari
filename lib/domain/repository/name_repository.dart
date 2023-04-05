import 'package:fpdart/fpdart.dart';
import 'package:nutrisari/core/error/failures.dart';

abstract class NameRepository {
  Future<Either<Failure, String>> getName();

  Future<Either<Failure, bool>> setName({
    required String name,
  });
}

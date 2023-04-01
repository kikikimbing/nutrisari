import 'package:mockito/annotations.dart';
import 'package:nutrisari/core/networking/networking.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';

@GenerateMocks([
  Networking,
  FoodRemoteDataSource,
  FoodRepository,
])
void main() {}

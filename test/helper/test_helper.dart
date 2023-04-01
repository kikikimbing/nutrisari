import 'package:mockito/annotations.dart';
import 'package:nutrisari/core/networking/networking.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';

@GenerateMocks([
  Networking,
  FoodRemoteDataSource,
])
void main() {}

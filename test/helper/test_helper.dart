import 'package:mockito/annotations.dart';
import 'package:nutrisari/core/networking/networking.dart';
import 'package:nutrisari/data/datasources/name_local_datasource.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';
import 'package:nutrisari/domain/usecases/get_food_detail_usecase.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';

@GenerateMocks([
  Networking,
  FoodRemoteDataSource,
  NameLocalDataSource,
  FoodRepository,
  NameRepository,
  GetFoodListUseCase,
  GetFoodDetailUseCase,
])
void main() {}

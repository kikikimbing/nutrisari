import 'package:get_it/get_it.dart';
import 'package:mekari_network/mekari_network.dart';
import 'package:nutrisari/core/networking/networking.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/data/datasources/name_local_datasource.dart';
import 'package:nutrisari/data/repositories/food_repository_impl.dart';
import 'package:nutrisari/data/repositories/name_repository_impl.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';
import 'package:nutrisari/domain/usecases/calculate_calorie_usecase.dart';
import 'package:nutrisari/domain/usecases/get_food_detail_usecase.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';
import 'package:nutrisari/domain/usecases/get_name_usecase.dart';
import 'package:nutrisari/domain/usecases/set_name_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

final nutrisariDependency = GetIt.instance;

class NutrisariDependency {
  const NutrisariDependency();

  Future<void> registerNutrisari() async {
    await registerCore();
    _registerNetwork();
    _registerNutrisariData();
    _registerNutrisariDomain();
  }

  Future<void> registerCore() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    nutrisariDependency.registerLazySingleton(() => sharedPreferences);
  }

  void _registerNetwork() {
    nutrisariDependency.registerLazySingleton<MKRNetwork>(
      () => MKRNetwork(
        baseUrl: 'https://api.edamam.com',
      ),
    );

    nutrisariDependency.registerLazySingleton<Networking>(
      () => Networking(
        httpClient: nutrisariDependency(),
      ),
    );
  }

  void _registerNutrisariData() {
    nutrisariDependency.registerLazySingleton<FoodRemoteDataSource>(
      () => FoodRemoteDataSourceImpl(
        networking: nutrisariDependency(),
      ),
    );

    nutrisariDependency.registerLazySingleton<NameLocalDataSource>(
      () => NameLocalDataSourceImpl(
        sharedPreferences: nutrisariDependency(),
      ),
    );

    nutrisariDependency.registerLazySingleton<FoodRepository>(
      () => FoodRepositoryImpl(foodRemoteDataSource: nutrisariDependency()),
    );

    nutrisariDependency.registerLazySingleton<NameRepository>(
      () => NameRepositoryImpl(nameLocalDataSource: nutrisariDependency()),
    );
  }

  void _registerNutrisariDomain() {
    nutrisariDependency.registerLazySingleton<GetFoodListUseCase>(
      () => GetFoodListUseCase(foodRepository: nutrisariDependency()),
    );

    nutrisariDependency.registerLazySingleton<GetFoodDetailUseCase>(
      () => GetFoodDetailUseCase(foodRepository: nutrisariDependency()),
    );

    nutrisariDependency.registerLazySingleton<GetNameUseCase>(
      () => GetNameUseCase(nameRepository: nutrisariDependency()),
    );

    nutrisariDependency.registerLazySingleton<SetNameUseCase>(
      () => SetNameUseCase(nameRepository: nutrisariDependency()),
    );

    nutrisariDependency.registerLazySingleton<CalculateCalorieUseCase>(
      () => const CalculateCalorieUseCase(),
    );
  }
}

import 'package:get_it/get_it.dart';
import 'package:mekari_network/mekari_network.dart';
import 'package:nutrisari/core/networking/networking.dart';
import 'package:nutrisari/data/datasources/food_remote_datasource.dart';
import 'package:nutrisari/data/datasources/name_local_datasource.dart';
import 'package:nutrisari/data/repositories/food_repository_impl.dart';
import 'package:nutrisari/data/repositories/name_repository_impl.dart';
import 'package:nutrisari/domain/repository/food_repository.dart';
import 'package:nutrisari/domain/repository/name_repository.dart';
import 'package:nutrisari/domain/usecases/get_food_detail_usecase.dart';
import 'package:nutrisari/domain/usecases/get_food_list_usecase.dart';
import 'package:nutrisari/domain/usecases/get_name_usecase.dart';
import 'package:nutrisari/domain/usecases/set_name_usecase.dart';
import 'package:nutrisari/presentation/bloc/food_detail/food_detail_bloc.dart';
import 'package:nutrisari/presentation/bloc/food_list/food_list_bloc.dart';
import 'package:nutrisari/presentation/bloc/name/name_bloc.dart';
import 'package:nutrisari/presentation/bloc/recommendation/recommendation_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final nutrisariDependency = GetIt.instance;

class NutrisariDependency {
  const NutrisariDependency();

  static registerNutrisari() {
    _registerNetwork();
    _registerNutrisariData();
    _registerNutrisariDomain();
    _registerNutrisariPresentation();
  }

  static _registerNetwork() {
    nutrisariDependency.registerLazySingleton<Networking>(
      () => Networking(
        httpClient: MKRNetwork(
          baseUrl: 'https://api.edamam.com/api/food-database/v2/parser',
        ),
      ),
    );
  }

  static _registerNutrisariData() {
    nutrisariDependency.registerLazySingleton<FoodRemoteDataSource>(
      () => FoodRemoteDataSourceImpl(
        networking: nutrisariDependency(),
      ),
    );

    nutrisariDependency.registerLazySingletonAsync<NameLocalDataSource>(
      () async => NameLocalDataSourceImpl(
        sharedPreferences: await SharedPreferences.getInstance(),
      ),
    );

    nutrisariDependency.registerLazySingleton<FoodRepository>(
      () => FoodRepositoryImpl(foodRemoteDataSource: nutrisariDependency()),
    );

    nutrisariDependency.registerLazySingleton<NameRepository>(
      () => NameRepositoryImpl(nameLocalDataSource: nutrisariDependency()),
    );
  }

  static _registerNutrisariDomain() {
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
  }

  static _registerNutrisariPresentation() {
    nutrisariDependency.registerFactory<FoodListBloc>(
      () => FoodListBloc(getFoodListUseCase: nutrisariDependency()),
    );

    nutrisariDependency.registerFactory<FoodDetailBloc>(
      () => FoodDetailBloc(getFoodDetailUseCase: nutrisariDependency()),
    );

    nutrisariDependency.registerFactory<NameBloc>(
      () => NameBloc(
        getNameUseCase: nutrisariDependency(),
        setNameUseCase: nutrisariDependency(),
      ),
    );

    nutrisariDependency.registerFactory<RecommendationBloc>(
      () => RecommendationBloc(
        getFoodListUseCase: nutrisariDependency(),
      ),
    );
  }
}

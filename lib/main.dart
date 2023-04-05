import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrisari/di/dependency_injection.dart';
import 'package:nutrisari/presentation/bloc/calorie/calorie_bloc.dart';
import 'package:nutrisari/presentation/bloc/food_list/food_list_bloc.dart';
import 'package:nutrisari/presentation/bloc/name/name_bloc.dart';
import 'package:nutrisari/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:nutrisari/presentation/screen/detail_screen.dart';
import 'package:nutrisari/presentation/screen/navigation_container_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await const NutrisariDependency().registerNutrisari();
  runApp(const NutrisariApp());
}

class NutrisariApp extends StatelessWidget {
  const NutrisariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => NavigationCubit(),
            ),
            BlocProvider(
              create: (_) => FoodListBloc(
                getFoodListUseCase: nutrisariDependency(),
              ),
            ),
            BlocProvider(
              create: (_) => NameBloc(
                getNameUseCase: nutrisariDependency(),
                setNameUseCase: nutrisariDependency(),
              ),
            ),
            BlocProvider(
              create: (_) => CalorieBloc(
                calculateCalorieUseCase: nutrisariDependency(),
              ),
            )
          ],
          child: const NavigationContainerScreen(),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details/:id',
          name: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return DetailScreen(id: state.params['id']);
          },
        ),
      ],
    ),
  ],
);

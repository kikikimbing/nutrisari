import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrisari/di/dependency_injection.dart';
import 'package:nutrisari/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:nutrisari/presentation/screen/detail_screen.dart';
import 'package:nutrisari/presentation/screen/navigation_container_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  const NutrisariDependency();
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
        return BlocProvider(
          create: (_) => NavigationCubit(),
          child: const NavigationContainerScreen(),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailScreen();
          },
        ),
      ],
    ),
  ],
);

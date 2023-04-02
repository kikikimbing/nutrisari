import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrisari/presentation/screen/detail_screen.dart';
import 'package:nutrisari/presentation/screen/home_screen.dart';

void main() {
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
        return const HomeScreen();
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

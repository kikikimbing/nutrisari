import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrisari/di/dependency_injection.dart';
import 'package:nutrisari/presentation/bloc/food_detail/food_detail_bloc.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_container.dart';

class DetailScreen extends StatelessWidget {
  final String? id;
  const DetailScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => FoodDetailBloc(
          getFoodDetailUseCase: nutrisariDependency(),
        )..add(GetFoodDetail(foodId: id!)),
        child: const FoodDetailContainer(),
      ),
    );
  }
}

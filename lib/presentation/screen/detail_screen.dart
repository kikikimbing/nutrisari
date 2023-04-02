import 'package:flutter/material.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_container.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: FoodDetailContainer(),
    );
  }
}

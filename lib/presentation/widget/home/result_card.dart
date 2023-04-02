import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrisari/presentation/widget/common/back_icon.dart';
import 'package:nutrisari/presentation/widget/home/food_contents.dart';
import 'package:nutrisari/presentation/widget/home/food_image.dart';
import 'package:nutrisari/presentation/widget/home/food_name.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const FoodImage(),
      title: const FoodName(),
      subtitle: const FoodContents(),
      trailing: const BackIcon(),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black12, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      onTap: () => context.go('/details'),
    );
  }
}

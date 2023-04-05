import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FoodDetailNutrition extends StatelessWidget {
  final String calories;
  final String carbs;
  final String protein;
  final String fat;
  final String fiber;

  const FoodDetailNutrition({
    super.key,
    required this.calories,
    required this.carbs,
    required this.protein,
    required this.fat,
    required this.fiber,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NutritionData(
                type: 'calories',
                amount: calories,
                measure: 'kcal',
              ),
              NutritionData(
                type: 'carbs',
                amount: carbs,
                measure: 'gr',
              ),
              NutritionData(
                type: 'protein',
                amount: protein,
                measure: 'gr',
              ),
              NutritionData(
                type: 'fat',
                amount: fat,
                measure: 'mg',
              ),
              NutritionData(
                type: 'fiber',
                amount: fiber,
                measure: 'g',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NutritionData extends StatelessWidget {
  final String type;
  final String measure;
  final String amount;

  const NutritionData({
    super.key,
    required this.type,
    required this.measure,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(type, style: MpTextStyles.sm),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(amount, style: MpTextStyles.l.semiBold),
        ),
        Text(measure, style: MpTextStyles.sm),
      ],
    );
  }
}

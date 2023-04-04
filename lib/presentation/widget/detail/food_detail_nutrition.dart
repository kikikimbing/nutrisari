import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FoodDetailNutrition extends StatelessWidget {
  const FoodDetailNutrition({super.key});

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
            children: const [
              NutritionData(
                type: 'calories',
                amount: '350',
                measure: 'kcal',
              ),
              NutritionData(
                type: 'carbs',
                amount: '100',
                measure: 'gr',
              ),
              NutritionData(
                type: 'protein',
                amount: '10',
                measure: 'gr',
              ),
              NutritionData(
                type: 'iron',
                amount: '200',
                measure: 'mg',
              ),
              NutritionData(
                type: 'fiber',
                amount: '0.5',
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
          child: Text(amount, style: MpTextStyles.xl.semiBold),
        ),
        Text(measure, style: MpTextStyles.sm),
      ],
    );
  }
}

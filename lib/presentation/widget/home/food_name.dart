import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FoodName extends StatelessWidget {
  const FoodName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        'Chicken Salad',
        style: MpTextStyles.md.semiBold,
      ),
    );
  }
}

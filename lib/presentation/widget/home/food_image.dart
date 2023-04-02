import 'package:flutter/material.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Image.network(
        'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
      ),
    );
  }
}

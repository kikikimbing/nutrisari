import 'package:flutter/material.dart';

class FoodDetailImage extends StatelessWidget {
  const FoodDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Image.network(
        'https://www.edamam.com/food-img/f7d/f7dce66e89856c692168da492a5b359f.jpg',
        width: 360,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

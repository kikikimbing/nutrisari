import 'package:flutter/material.dart';
import 'package:nutrisari/presentation/widget/common/advanced_image.dart';

class FoodDetailImage extends StatelessWidget {
  final String imageUrl;
  const FoodDetailImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: AdvanceImage(
        url: imageUrl,
        height: 200,
        width: 360,
      ),
    );
  }
}

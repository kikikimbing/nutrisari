import 'package:flutter/material.dart';

class AdvanceImage extends StatelessWidget {
  final String url;
  final double height;
  final double width;
  const AdvanceImage({
    super.key,
    required this.url,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      errorBuilder: (context, error, stackTrace) {
        return SizedBox(
          height: height,
          width: width,
          child: Image.network(
            'https://www.pngkit.com/png/detail/279-2796563_clipart-free-seaweed-clipart-draw-food-placeholder.png',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}

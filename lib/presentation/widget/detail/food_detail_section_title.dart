import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FoodDetailSectionTitle extends StatelessWidget {
  final String textTitle;

  const FoodDetailSectionTitle({
    super.key,
    required this.textTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        textTitle,
        style: MpTextStyles.xl.semiBold,
        textAlign: TextAlign.left,
      ),
    );
  }
}

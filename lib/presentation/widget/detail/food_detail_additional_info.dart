import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FoodDetailAdditionalInfo extends StatelessWidget {
  final String brands;
  final String knownAs;

  const FoodDetailAdditionalInfo({
    super.key,
    required this.brands,
    required this.knownAs,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Information(
                name: 'Brands',
                value: brands,
              ),
              const MpVerticalSpace.xs(),
              Information(
                name: 'Knowns As',
                value: knownAs,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  final String name;
  final String value;

  const Information({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name, style: MpTextStyles.sm),
        const MpVerticalSpace.xxxs(),
        Align(
          alignment: Alignment.center,
          child: Text(
            value,
            style: MpTextStyles.md.semiBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

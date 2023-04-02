import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FoodDetailAdditionalInfo extends StatelessWidget {
  const FoodDetailAdditionalInfo({super.key});

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
              Information(
                name: 'Brands',
                value: 'Nestle',
              ),
              Information(
                name: 'Knowns As',
                value: 'Chiks Salad',
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
        Text(value, style: MpTextStyles.xl.semiBold),
      ],
    );
  }
}

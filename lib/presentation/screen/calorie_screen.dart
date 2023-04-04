import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class CalorieScreen extends StatefulWidget {
  const CalorieScreen({super.key});

  @override
  State<CalorieScreen> createState() => _CalorieScreenState();
}

class _CalorieScreenState extends State<CalorieScreen> {
  double countCalorie() {
    // To be implemented
    //  66 + (13.7 × weight in kg) + (5 × height in cm) - (6.8 × age in years).
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MpTextAppBar(title: "Calorie Calculator"),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Center(
          child: Column(
            children: [
              MpAvatar.icon(
                icon: Icons.restaurant_rounded,
                size: MpAvatarSize.custom(value: 120.0),
              ),
              MpTextField(
                label: "Age (years)",
                hint: "e.g 24",
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              MpTextField(
                label: "Weight (Kg)",
                hint: "e.g 80",
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              MpTextField(
                label: "Height (cm)",
                hint: "e.g 170",
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: MpButton.primary(
                  label: 'Calculate',
                  onPressed: () {},
                ),
              ),
              Text("Required calorie intake:"),
              Text("2000 Kcal", style: MpTextStyles.xl.semiBold),
            ],
          ),
        ),
      ),
    );
  }
}

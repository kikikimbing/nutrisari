import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/usecases/calculate_calorie_usecase.dart';
import 'package:nutrisari/presentation/bloc/calorie/calorie_bloc.dart';

class CalorieScreen extends StatefulWidget {
  const CalorieScreen({super.key});

  @override
  State<CalorieScreen> createState() => _CalorieScreenState();
}

class _CalorieScreenState extends State<CalorieScreen> {
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

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
                controller: ageController,
                label: "Age (years)",
                hint: "e.g 24",
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              MpTextField(
                controller: weightController,
                label: "Weight (Kg)",
                hint: "e.g 80",
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              MpTextField(
                controller: heightController,
                label: "Height (cm)",
                hint: "e.g 170",
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.next,
              ),
              BlocBuilder<CalorieBloc, CalorieState>(
                builder: (context, state) {
                  var calorie = 0.0;
                  if (state.calorieState.status.isHasData) {
                    calorie = state.calorieState.data ?? calorie;
                  }

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: MpButton.primary(
                          label: 'Calculate',
                          onPressed: () {
                            context.read<CalorieBloc>().add(
                                  CalculateCalorie(
                                    params: CalorieParams(
                                      age: int.parse(ageController.text),
                                      height: int.parse(heightController.text),
                                      weight: int.parse(weightController.text),
                                    ),
                                  ),
                                );
                          },
                        ),
                      ),
                      const Text("Required calorie intake:"),
                      Text("$calorie Kcal", style: MpTextStyles.xl.semiBold),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

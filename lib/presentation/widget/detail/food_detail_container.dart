import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/presentation/bloc/food_detail/food_detail_bloc.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_additional_info.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_image.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_nutrition.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_section_title.dart';

class FoodDetailContainer extends StatelessWidget {
  const FoodDetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodDetailBloc, FoodDetailState>(
      builder: (context, state) {
        if (state.foodDetailState.status.isHasData) {
          final food = state.foodDetailState.data;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                children: addVerticalSpaceBetweenElements(
                  16,
                  [
                    MpTextAppBar(title: 'Food Details'),
                    FoodDetailImage(imageUrl: food?.image ?? ""),
                    FoodDetailSectionTitle(
                      textTitle: food?.label ?? "No Information",
                    ),
                    FoodDetailNutrition(
                      calories:
                          "${food?.nutrients?.enercKcal.toStringAsFixed(2)}",
                      carbs: "${food?.nutrients?.chocdf.toStringAsFixed(2)}",
                      protein: "${food?.nutrients?.procnt.toStringAsFixed(2)}",
                      fat: "${food?.nutrients?.fat.toStringAsFixed(2)}",
                      fiber: "${food?.nutrients?.fitbtg.toStringAsFixed(2)}",
                    ),
                    const FoodDetailSectionTitle(
                      textTitle: "Ingredients Detail",
                    ),
                    Text(
                      food?.foodContentsLabel.replaceAll(";", ",") ??
                          "No Information",
                      style: MpTextStyles.md,
                    ),
                    const FoodDetailSectionTitle(
                      textTitle: "Additional Information",
                    ),
                    FoodDetailAdditionalInfo(
                      brands: food?.brand ?? "No Info",
                      knownAs: food?.knownAs ?? "No Info",
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state.foodDetailState.status.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Text("Empty");
        }
      },
    );
  }

  List<Widget> addVerticalSpaceBetweenElements(
    double space,
    List<Widget> widgets,
  ) {
    return _addSpaceBetweenElements(widgets, () => SizedBox(height: space));
  }

  List<Widget> _addSpaceBetweenElements(
    List<Widget> widgets,
    ValueGetter<SizedBox> sizedBoxGetter,
  ) {
    if (widgets.isEmpty || widgets.length == 1) {
      return widgets;
    }
    List<Widget> spacedWidgets = [widgets.first];
    for (var i = 1; i < widgets.length - 1; i++) {
      spacedWidgets.add(sizedBoxGetter());
      spacedWidgets.add(widgets[i]);
    }
    spacedWidgets.add(sizedBoxGetter());
    spacedWidgets.add(widgets.last);
    return spacedWidgets;
  }
}

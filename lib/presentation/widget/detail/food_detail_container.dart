import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_additional_info.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_image.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_nutrition.dart';
import 'package:nutrisari/presentation/widget/detail/food_detail_section_title.dart';

class FoodDetailContainer extends StatelessWidget {
  const FoodDetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: addVerticalSpaceBetweenElements(
            16,
            [
              MpTextAppBar(title: 'Food Details'),
              const FoodDetailImage(),
              const FoodDetailSectionTitle(
                textTitle: "Chicken Salad",
              ),
              const FoodDetailNutrition(),
              const FoodDetailSectionTitle(
                textTitle: "Ingredients Detail",
              ),
              const Text(
                'Spice and coloring, Brown Sugar, Salt, Sugar, Garlic, Onion',
                style: MpTextStyles.md,
              ),
              const FoodDetailSectionTitle(
                textTitle: "Additional Information",
              ),
              const FoodDetailAdditionalInfo(),
            ],
          ),
        ));
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

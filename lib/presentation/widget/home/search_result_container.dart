import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/presentation/widget/home/result_card.dart';

class SearchResultContainer extends StatelessWidget {
  final List<Food>? foodList;

  const SearchResultContainer({
    super.key,
    required this.foodList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Search Result",
          style: MpTextStyles.xl.semiBold,
        ),
        const MpVerticalSpace.s(),
        Column(
          children: <Widget>[
            for (var food in foodList!)
              ResultCard(
                foodId: food.foodId,
                imageUrl: food.image,
                name: food.label,
                subtitle: food.foodContentsLabel,
              )
          ],
        )
      ],
    );
  }
}

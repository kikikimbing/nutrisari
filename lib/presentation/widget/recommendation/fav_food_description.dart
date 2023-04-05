import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FavFoodDescription extends StatelessWidget {
  const FavFoodDescription({
    super.key,
    required this.title,
    required this.subtitle,
    required this.calories,
  });

  final String title;
  final String subtitle;
  final String calories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.length > 16 ? title.substring(0, 16) : title,
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: MpTextStyles.md.semiBold,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 2.0)),
            Text(
              subtitle.length > 28 ? subtitle.substring(0, 28) : subtitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: MpTextStyles.xs,
            ),
          ],
        ),
        const MpVerticalSpace.s(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text('Calories', style: MpTextStyles.xs),
            Text(
              "$calories KCal",
              style: MpTextStyles.sm.semiBold,
            ),
          ],
        ),
      ],
    );
  }
}

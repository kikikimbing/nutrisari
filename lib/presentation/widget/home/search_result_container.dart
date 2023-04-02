import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/widget/home/result_card.dart';

class SearchResultContainer extends StatelessWidget {
  const SearchResultContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Search Result",
          style: MpTextStyles.xl.semiBold,
        ),
        const MpVerticalSpace.s(),
        ListView(
          shrinkWrap: true,
          children: const [
            ResultCard(),
          ],
        )
      ],
    );
  }
}

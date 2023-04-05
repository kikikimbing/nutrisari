import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/widget/common/advanced_image.dart';

class ResultCard extends StatelessWidget {
  final String foodId;
  final String imageUrl;
  final String name;
  final String subtitle;

  const ResultCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    required this.foodId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          child: SizedBox(
            height: 48,
            width: 48,
            child: imageUrl.isEmpty
                ? const Icon(Icons.food_bank, size: 48)
                : AdvanceImage(url: imageUrl, height: 200, width: 360),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Text(
            name,
            style: MpTextStyles.md.semiBold,
          ),
        ),
        subtitle: Text(
          subtitle.replaceAll(";", ","),
          style: MpTextStyles.xxs,
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
          size: 40,
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        onTap: () => context.goNamed('details', params: {
          'id': foodId,
        }),
      ),
    );
  }
}

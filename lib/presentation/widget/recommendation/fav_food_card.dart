import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrisari/presentation/widget/common/advanced_image.dart';
import 'package:nutrisari/presentation/widget/recommendation/fav_food_description.dart';

class FavFoodCard extends StatelessWidget {
  const FavFoodCard({
    super.key,
    required this.foodId,
    required this.thumbnailImage,
    required this.title,
    required this.subtitle,
    required this.calories,
  });

  final String foodId;
  final String thumbnailImage;
  final String title;
  final String subtitle;
  final String calories;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.goNamed('details', params: {
        'id': foodId,
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SizedBox(
          height: 120,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  child: thumbnailImage.isEmpty
                      ? const Icon(Icons.food_bank, size: 60)
                      : AdvanceImage(
                          url: thumbnailImage, height: 200, width: 360),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: FavFoodDescription(
                  title: title,
                  subtitle: subtitle,
                  calories: calories,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

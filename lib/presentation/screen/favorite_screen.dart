import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MpTextAppBar(title: 'Favorite'),
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            children: const <Widget>[
              FavFoodCard(
                thumbnailImage:
                    'https://www.dinneratthezoo.com/wp-content/uploads/2020/12/grilled-chicken-salad-4.jpg',
                title: 'Chicken Salad',
                subtitle:
                    'Spice and coloring, Brown Sugar, Salt, Sugar, Garlic, Onion',
                calories: '500kcal',
              ),
              FavFoodCard(
                thumbnailImage:
                    'https://d3ldzx7fxfvsfy.cloudfront.net/simplifiedadmin/19694c55-8c68-42a9-ae3f-68410fc84900/CheeseBurger-FoodServiceRecipesNewTemplate-550x321.jpg',
                title: 'Cheese Burger',
                subtitle:
                    'Spice and coloring, Brown Sugar, Salt, Sugar, Garlic, Onion',
                calories: '800kcal',
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FavFoodCard extends StatelessWidget {
  const FavFoodCard({
    super.key,
    required this.thumbnailImage,
    required this.title,
    required this.subtitle,
    required this.calories,
  });

  final String thumbnailImage;
  final String title;
  final String subtitle;
  final String calories;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.go('/details'),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  child: Image.network(thumbnailImage, fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: _FoodDescription(
                    title: title,
                    subtitle: subtitle,
                    calories: calories,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodDescription extends StatelessWidget {
  const _FoodDescription({
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
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: MpTextStyles.md.semiBold,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
              Text(
                subtitle,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: MpTextStyles.xs,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Text('Calories', style: MpTextStyles.xs),
              Text(
                calories,
                style: MpTextStyles.sm.semiBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

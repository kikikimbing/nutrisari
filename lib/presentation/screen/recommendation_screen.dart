import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/core/utils/generate_random_food.dart';
import 'package:nutrisari/di/dependency_injection.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/presentation/bloc/recommendation/recommendation_bloc.dart';
import 'package:nutrisari/presentation/widget/recommendation/fav_food_card.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecommendationBloc(
        getFoodListUseCase: nutrisariDependency(),
      )..add(GetRecommendation(
          foodName: GenerateRandomFood.generateFood(),
        )),
      child: Scaffold(
        appBar: MpTextAppBar(title: 'Recommendation'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                BlocBuilder<RecommendationBloc, RecommendationState>(
                  builder: (context, state) {
                    List<Food> recommendationList = [];

                    if (state.recommendationState.status.isLoading) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 24.0),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    if (state.recommendationState.status.isHasData) {
                      recommendationList =
                          state.recommendationState.data as List<Food>;
                      return Column(
                        children: <Widget>[
                          for (var food in recommendationList)
                            FavFoodCard(
                              foodId: food.foodId,
                              title: food.label,
                              subtitle: food.foodContentsLabel,
                              calories:
                                  "${food.nutrients?.enercKcal.toStringAsFixed(2)}",
                              thumbnailImage: food.image,
                            )
                        ],
                      );
                    }

                    return const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: Center(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Empty results!",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

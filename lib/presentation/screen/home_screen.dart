import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/domain/entities/food.dart';
import 'package:nutrisari/presentation/bloc/food_list/food_list_bloc.dart';
import 'package:nutrisari/presentation/widget/home/main_header.dart';
import 'package:nutrisari/presentation/widget/home/search_result_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: Column(
            children: [
              const MainHeader(),
              BlocBuilder<FoodListBloc, FoodListState>(
                builder: (context, state) {
                  String text = "empty";
                  List<Food> foodList = [];

                  if (state.foodListState.status.isLoading) {
                    text = "Loading";
                  }

                  if (state.foodListState.status.isHasData) {
                    foodList = state.foodListState.data ?? [];
                  }

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: MpSearch(
                          controller: searchController,
                          filterText: "Search",
                          onFilterPressed: () {
                            context.read<FoodListBloc>().add(
                                  GetFoodList(foodName: searchController.text),
                                );
                          },
                        ),
                      ),
                      state.foodListState.status.isHasData
                          ? SearchResultContainer(foodList: foodList)
                          : Text(text),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

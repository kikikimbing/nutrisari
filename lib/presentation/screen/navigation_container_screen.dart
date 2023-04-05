import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/cubit/navigation/navbar_item.dart';
import 'package:nutrisari/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:nutrisari/presentation/screen/home_screen.dart';
import 'package:nutrisari/presentation/screen/recommendation_screen.dart';
import 'package:nutrisari/presentation/screen/calorie_screen.dart';
import 'package:nutrisari/presentation/screen/profile_screen.dart';

class NavigationContainerScreen extends StatefulWidget {
  const NavigationContainerScreen({super.key});

  @override
  State<NavigationContainerScreen> createState() =>
      _NavigationContainerScreenState();
}

class _NavigationContainerScreenState extends State<NavigationContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocConsumer<NavigationCubit, NavigationState>(
        listener: (context, state) {
          print(state);
        },
        builder: (context, state) {
          return MpBottomNavBar(
            items: [
              MpBottomNavBarItemData(
                key: const Key('0'),
                label: 'Home',
                icon: MpIcons.feature.home,
              ),
              MpBottomNavBarItemData(
                key: const Key('1'),
                label: 'Recommendation',
                icon: MpIcons.feature.like,
              ),
              MpBottomNavBarItemData(
                key: const Key('2'),
                label: 'Calorie Calculator',
                icon: MpIcons.feature.calculator,
              ),
              MpBottomNavBarItemData(
                key: const Key('3'),
                label: 'Profile',
                icon: MpIcons.feature.profile,
              ),
            ],
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
              } else if (index == 1) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.recommendation);
              } else if (index == 2) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.calculator);
              } else if (index == 3) {
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.profile);
              }
            },
          );
        },
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return HomeScreen();
          } else if (state.navbarItem == NavbarItem.recommendation) {
            return RecommendationScreen();
          } else if (state.navbarItem == NavbarItem.calculator) {
            return CalorieScreen();
          } else if (state.navbarItem == NavbarItem.profile) {
            return ProfileScreen();
          }
          return Container();
        },
      ),
    );
  }
}

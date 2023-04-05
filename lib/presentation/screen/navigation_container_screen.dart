import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/cubit/navigation/navbar_item.dart';
import 'package:nutrisari/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:nutrisari/presentation/screen/home_screen.dart';
import 'package:nutrisari/presentation/screen/recommendation_screen.dart';
import 'package:nutrisari/presentation/screen/calorie_screen.dart';
import 'package:nutrisari/presentation/screen/profile_screen.dart';

enum IconType {
  outlined,
  duotone,
  fill,
  outlineDuotone,
  outlineFill,
  duotoneFill
}

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
      bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return MpBottomNavBar(
            items: [
              MpBottomNavBarItemData(
                key: const Key('0'),
                label: 'Home',
                icon: transformIconByType(
                  MpIcons.feature.home,
                  IconType.duotoneFill,
                  0 == state.index,
                ),
              ),
              MpBottomNavBarItemData(
                key: const Key('1'),
                label: 'Recommendation',
                icon: transformIconByType(
                  MpIcons.feature.like,
                  IconType.duotoneFill,
                  1 == state.index,
                ),
              ),
              MpBottomNavBarItemData(
                key: const Key('2'),
                label: 'Calorie Calculator',
                icon: transformIconByType(
                  MpIcons.feature.calculator,
                  IconType.duotoneFill,
                  2 == state.index,
                ),
              ),
              MpBottomNavBarItemData(
                key: const Key('3'),
                label: 'Profile',
                icon: transformIconByType(
                  MpIcons.feature.profile,
                  IconType.duotoneFill,
                  3 == state.index,
                ),
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
            return const HomeScreen();
          } else if (state.navbarItem == NavbarItem.recommendation) {
            return const RecommendationScreen();
          } else if (state.navbarItem == NavbarItem.calculator) {
            return const CalorieScreen();
          } else if (state.navbarItem == NavbarItem.profile) {
            return const ProfileScreen();
          }
          return Container();
        },
      ),
    );
  }

  String transformIconByType(
    String icon,
    IconType type,
    bool isActive,
  ) {
    switch (type) {
      case IconType.outlined:
        return icon;
      case IconType.duotone:
        return icon.duotone;
      case IconType.fill:
        return icon.fill;
      case IconType.outlineFill:
        return isActive ? icon.fill : icon;
      case IconType.outlineDuotone:
        return isActive ? icon.duotone : icon;
      case IconType.duotoneFill:
        return isActive ? icon.fill : icon.duotone;
    }
  }
}

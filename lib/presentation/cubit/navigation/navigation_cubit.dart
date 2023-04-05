import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrisari/presentation/cubit/navigation/navbar_item.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(const NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.recommendation:
        emit(const NavigationState(NavbarItem.recommendation, 1));
        break;
      case NavbarItem.calculator:
        emit(const NavigationState(NavbarItem.calculator, 2));
        break;
      case NavbarItem.profile:
        emit(const NavigationState(NavbarItem.profile, 3));
        break;
    }
  }
}

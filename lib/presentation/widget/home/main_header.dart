import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/core/state/view_data_state.dart';
import 'package:nutrisari/presentation/bloc/name/name_bloc.dart';

class MainHeader extends StatefulWidget {
  const MainHeader({
    super.key,
  });

  @override
  State<MainHeader> createState() => _MainHeaderState();
}

class _MainHeaderState extends State<MainHeader> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NameBloc>(context).add(const GetName());
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<NameBloc, NameState>(
          builder: (context, state) {
            var greeting = "Nutrisari App";
            if (state.nameState.status.isHasData) {
              greeting = "Hello ${state.nameState.data}!";
            }
            return Greeting(greeting: greeting);
          },
        ),
        MpAvatar.icon(
          icon: Icons.restaurant_menu_rounded,
          size: MpAvatarSize.s80(),
        ),
      ],
    );
  }
}

class Greeting extends StatelessWidget {
  final String greeting;
  const Greeting({super.key, required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          greeting,
          style: MpTextStyles.xl.semiBold,
        ),
        const MpVerticalSpace.xxs(),
        const Text(
          "Let's check out what we eat!",
          style: MpTextStyles.md,
        ),
      ],
    );
  }
}

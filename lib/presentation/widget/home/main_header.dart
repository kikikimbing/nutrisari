import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Greeting(),
        MpAvatar.icon(
          icon: Icons.restaurant_menu_rounded,
          size: MpAvatarSize.s80(),
        ),
      ],
    );
  }
}

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nutrisari App",
          style: MpTextStyles.xl.semiBold,
        ),
        const MpVerticalSpace.xxs(),
        const Text(
          "Let's check our what we eat!",
          style: MpTextStyles.md,
        ),
      ],
    );
  }
}

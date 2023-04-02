import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/widget/home/main_header.dart';
import 'package:nutrisari/presentation/widget/home/search_result_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenContent();
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: const [
            MainHeader(),
            MpVerticalSpace.s(),
            MpSearch(),
            MpVerticalSpace.s(),
            SearchResultContainer(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

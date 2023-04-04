import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';
import 'package:nutrisari/presentation/widget/home/main_header.dart';
import 'package:nutrisari/presentation/widget/home/search_result_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: const [
            MainHeader(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: MpSearch(),
            ),
            SearchResultContainer(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

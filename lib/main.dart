import 'package:flutter/material.dart';
import 'package:mekari_pixel/mekari_pixel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nutrisari App",
                      style: MpTextStyles.xl.semiBold,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Let's check our what we eat!",
                      style: MpTextStyles.md,
                    ),
                  ],
                ),
                MpAvatar.icon(
                  icon: Icons.restaurant_menu_rounded,
                  size: MpAvatarSize.s80(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const MpSearch(),
            const SizedBox(height: 20),
            Column(
              children: [
                Text(
                  "Search Result",
                  style: MpTextStyles.xl.semiBold,
                ),
                const SizedBox(height: 20),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      leading: SizedBox(
                        height: 48,
                        width: 48,
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          'Chicken Salad',
                          style: MpTextStyles.md.semiBold,
                        ),
                      ),
                      subtitle: const Text(
                        'Spice and coloring, Brown Sugar, Salt, Sugar, Garlic, Onion',
                        style: MpTextStyles.xxs,
                      ),
                      trailing: const Icon(
                        Icons.chevron_right_rounded,
                        size: 40,
                      ),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      onTap: () {
                        // Navigate to detail page
                        print("Navigate to detail page");
                      },
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

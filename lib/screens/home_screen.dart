import 'package:flutter/material.dart';
import 'package:lati_marvel/helpers/functions_helpes.dart';
import 'package:lati_marvel/widgets/customIconButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Image.asset(
          "assets/marvelLogo.png",
          width: getSize(context).width * 0.2,
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
              icon: "assets/icons/FavoriteButton.png", onTap: () {}),
          CustomIconButton(icon: "assets/icons/InboxIcon.png", onTap: () {}),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HomeScreen',
            ),
          ],
        ),
      ),
    );
  }
}

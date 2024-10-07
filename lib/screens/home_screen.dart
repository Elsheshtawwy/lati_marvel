import 'package:flutter/material.dart';
import 'package:lati_marvel/providers/moviesProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {


 void initState() {
    Provider.of<MoviesProvider>(context, listen: false).fetchMovies();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "./assets/marvelLogo.png",
            height: 32,
            width: 100,
          ),
          centerTitle: true,
          actions: [
            const SizedBox(
              width: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red)),
              child: Image.asset(
                "./assets/icons/FavoriteButton.png",
                height: 28,
                width: 28,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red)),
              child: Image.asset(
                "assets/icons/InboxIcon.png",
                height: 28,
                width: 28,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            
          ],
        ),
        drawer: const Drawer(),
        body: Container());
  }
}
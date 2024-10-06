import 'package:flutter/material.dart';
import 'package:lati_marvel/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "lati Marvel",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
          primaryColor: Color(
            0xFFF0141E,
          )),
      home: SplashScreen(),
    );
  }
}

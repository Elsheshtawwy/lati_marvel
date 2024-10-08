import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lati_marvel/helpers/functions_helpes.dart';
import 'package:lati_marvel/screens/authentication%20Screens/login_screen.dart';
import 'package:lati_marvel/screens/authentication%20Screens/register_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          CupertinoPageRoute(builder: (context) => const RegisterScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
          child: Image.asset(
        "assets/InvertedLogo.png",
        width: getSize(context).width * 0.8,
      )),
    );
  }
}

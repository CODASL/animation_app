import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animation_app/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const Home(),
      splash: const Icon(
        Icons.animation,
        size: 70,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
    );
  }
}

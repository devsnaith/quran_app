import 'package:flutter/material.dart';
import 'package:quran/features/intro/view/splash/screens/intro_screen.dart';
import 'package:quran/features/intro/view/splash/widgets/splash/splash_background.dart';
import 'package:quran/features/intro/view/splash/widgets/splash/splash_icon.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void whenSplashComplete(BuildContext context) {
    Widget goToScreen = const IntroScreen();
    MaterialPageRoute pageRoute = MaterialPageRoute(builder: (context) => goToScreen);
    Navigator.of(context).pushReplacement(pageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SplashBackground(),
          Center(
            child: SplashIcon(() => whenSplashComplete(context))
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quran/features/intro/view/splash/widgets/splash_background.dart';
import 'package:quran/features/intro/view/splash/widgets/splash_icon.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  /* TODO: Introduction Screen */
  void whenSplashComplete(BuildContext context) {
    Widget goToScreen = const Placeholder();
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

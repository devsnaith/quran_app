import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/splash/view/widgets/splash_background.dart';
import 'package:quran/features/splash/view/widgets/splash_icon.dart';

class SplashScreen extends StatelessWidget {
  
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashScreenBgColor,
      body: const Stack(
        children: [
          SplashBackground(),
          Center(child: SplashIcon()),
        ],
      ),
    );
  }
}

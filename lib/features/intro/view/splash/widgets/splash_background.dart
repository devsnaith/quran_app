import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_constant.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
            AppConstant.splashScreenBackgroundPattern,
            repeat: ImageRepeat.repeat,
            width: double.infinity,
            height: double.infinity,
          );
  }
  
}
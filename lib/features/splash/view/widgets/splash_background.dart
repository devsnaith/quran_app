import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/splash/view-model/cubit/splash_cubit.dart';

class SplashBackground extends StatelessWidget {
  
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
            context.read<SplashCubit>().getSplashRepository().getSplashModel().splashScreenBackgroundPattern,
            repeat: ImageRepeat.repeat,
            width: double.infinity,
            height: double.infinity,
          );
  }
  
}
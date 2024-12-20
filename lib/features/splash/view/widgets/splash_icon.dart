import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/splash/Model/splash_model.dart';
import 'package:quran/features/splash/view-model/cubit/splash_cubit.dart';

class SplashIcon extends StatefulWidget {
  
  const SplashIcon({super.key});

  @override
  State<SplashIcon> createState() => _SplashIcon();
}

class _SplashIcon extends State<SplashIcon> with SingleTickerProviderStateMixin {

  late Animation<double> animatedWidth;
  late AnimationController animationController;
  late SplashModel splashModel;

  @override
  void initState() {
    
    super.initState();
    splashModel = context.read<SplashCubit>().getSplashRepository().getSplashModel();

    animationController = AnimationController(vsync: this)
    ..duration = Duration(milliseconds: splashModel.splashScreenDuration)
    ..addListener(() => onUpdate());

    Duration splashScreenDelayDuration = Duration(milliseconds: splashModel.splashScreenBeforeAnimationDelay);
    Future.delayed(splashScreenDelayDuration, () => animationController.forward());

  }

  void onUpdate() {
    
    if(animationController.status != AnimationStatus.completed){
      setState(() {});
      return;
    }
    
    context.read<SplashCubit>().splashCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {

      Size screenSize = MediaQuery.of(context).size;
      double iconWidth = (orientation.name == "landscape" ? screenSize.height : screenSize.width);
      
      animatedWidth = Tween<double>(begin: -iconWidth, end: 0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.fastLinearToSlowEaseIn),
      );

      iconWidth = (iconWidth / 2) + animatedWidth.value;
      
      return Image.asset(splashModel.splashScreenIcon, width: iconWidth);   
      
    });
  }

}

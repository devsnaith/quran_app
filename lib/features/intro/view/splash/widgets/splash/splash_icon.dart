import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_constant.dart';

class SplashIcon extends StatefulWidget {
  const SplashIcon(this.listener, {super.key});

  /* A Simple callback to let ``splash_screen.dart``
    knows that the animation completed */
  final VoidCallback listener;

  @override
  State<SplashIcon> createState() => _SplashIcon();
}

class _SplashIcon extends State<SplashIcon> with SingleTickerProviderStateMixin {

  late Animation<double> animatedWidth;
  late AnimationController animationController;

  @override
  void initState() {
    
    super.initState();
    
    animationController = AnimationController(vsync: this)
    ..duration = const Duration(milliseconds: AppConstant.splashScreenDuration)
    ..addListener(() => onUpdate());

    Duration splashScreenDelayDuration = const Duration(milliseconds: AppConstant.splashScreenBeforeAnimationDelay);
    Future.delayed(splashScreenDelayDuration, () => animationController.forward());

  }

  void onUpdate() {
    
    if(animationController.status != AnimationStatus.completed){
      setState(() {});
      return;
    }
    
    Duration splashScreenDelayDuration = const Duration(milliseconds: AppConstant.splashScreenAfterAnimationDelay);
    Future.delayed(splashScreenDelayDuration, () => widget.listener.call());

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
      
      return Image.asset(AppConstant.splashScreenIcon, width: iconWidth);   
      
    });
  }

}

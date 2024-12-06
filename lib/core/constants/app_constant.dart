import 'package:quran/features/splash/Model/splash_model.dart';

class AppConstant {
  
  static SplashModel splashModel = const SplashModel(

    splashScreenBackgroundPattern: "assets/images/splash/arabesque.png",
    splashScreenIcon: "assets/images/splash/ramadan-icon.png",
    
    /* Start the animation after... (in milliseconds) */
    splashScreenBeforeAnimationDelay: 500,
    
    /* Splash animation duration time (in milliseconds) */
    splashScreenDuration: 1000,
  
  );

  static int navigatorBarBtnSwitchDuration = 100;
  static int navigatorBarDefaultIndex = 0;

}
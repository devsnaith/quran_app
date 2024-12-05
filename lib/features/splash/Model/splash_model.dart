class SplashModel {
  const SplashModel({
    required this.splashScreenBackgroundPattern,
    required this.splashScreenIcon,
    required this.splashScreenBeforeAnimationDelay,
    required this.splashScreenDuration,
  });
  final String splashScreenBackgroundPattern;
  final String splashScreenIcon;
  final int splashScreenBeforeAnimationDelay;
  final int splashScreenDuration;
}
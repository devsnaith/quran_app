part of 'introduction_cubit.dart';

@immutable
sealed class IntroductionState {}
final class IntroductionInitialized extends IntroductionState {}
final class IntroductionCompleted extends IntroductionState {}
final class IntroductionBegin extends IntroductionState {
  final List<IntroductionPage> introductionPages;
  IntroductionBegin(this.introductionPages);
}
part of 'navigator_cubit.dart';

@immutable
sealed class AppNavigatorState {}
final class NavigatorInitial extends AppNavigatorState {
  final defaultPageIndex = AppConstant.navigatorBarDefaultIndex;
}
final class NavigatorPageChanged extends AppNavigatorState {
  final NavigatorModel navigatorModel;
  NavigatorPageChanged(this.navigatorModel);
}
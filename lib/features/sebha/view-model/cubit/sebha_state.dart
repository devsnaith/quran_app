part of 'sebha_cubit.dart';

@immutable
sealed class SebhaState {}
final class SebhaIncrementEvent extends SebhaState {
  SebhaIncrementEvent(this.counter);
  final int counter;
}
final class SebhaClearEvent extends SebhaState {}
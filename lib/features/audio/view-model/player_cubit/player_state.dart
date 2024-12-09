part of 'player_cubit.dart';

@immutable
sealed class AppPlayerState {}
final class PlayerInitialize extends AppPlayerState {}
final class OnFetchingAudio extends AppPlayerState {
  final AudioModel audioModel;
  OnFetchingAudio(this.audioModel);
}
final class OnAudioFetched extends AppPlayerState {
  final AudioModel audioModel;
  OnAudioFetched(this.audioModel);
}
final class OnPlayerState extends AppPlayerState {
  final AudioModel? audioModel;
  final bool isPlaying;

  OnPlayerState(this.audioModel, this.isPlaying);
}
final class OnPositionChange extends AppPlayerState {
  final Duration position;
  final Duration duration;
  final AudioModel? audioModel;
  OnPositionChange(this.audioModel, this.position, this.duration);
}
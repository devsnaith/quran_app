part of 'surah_audio_cubit.dart';

@freezed
class SurahAudioState with _$SurahAudioState {
  const factory SurahAudioState.initial() = _Initial;
  const factory SurahAudioState.onSurahSelect(SurahModel surah) = _SurahSelect;
}

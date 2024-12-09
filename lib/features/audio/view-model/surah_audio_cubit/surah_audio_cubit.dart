import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/features/surah/models/surah_model.dart';

part 'surah_audio_state.dart';
part 'surah_audio_cubit.freezed.dart';

class SurahAudioCubit extends Cubit<SurahAudioState> {
  SurahAudioCubit() : super(const SurahAudioState.initial());
  
  void unSelect() => emit(const SurahAudioState.initial());
  void selectSurah(SurahModel surah) => emit(SurahAudioState.onSurahSelect(surah));

}
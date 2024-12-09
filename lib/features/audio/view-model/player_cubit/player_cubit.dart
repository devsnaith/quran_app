import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/features/audio/models/audio_model/audio_model.dart';
import 'package:quran/features/audio/models/editions_model/edition_model.dart';
import 'package:quran/features/audio/repositories/audio_repository.dart';
import 'package:quran/features/surah/models/surah_model.dart';

part 'player_state.dart';

class AppPlayerCubit extends Cubit<AppPlayerState> {
  AppPlayerCubit() : super(PlayerInitialize());

  SurahModel? _surah;
  EditionModel? _edition;
  AudioPlayer? _player;

  AudioModel? _audioModel;
  Duration? duration;

  AudioModel? getSelectedAudio() => _audioModel;

  void _initialize() {
    _player ??= AudioPlayer();
    _player!.playerStateStream.listen((event) => emit(OnPlayerState(_audioModel, event.playing)));
    _player!.positionStream.listen((event) => emit(  
      OnPositionChange(_audioModel, event, duration ?? const Duration(seconds: 1)),
    ));
  }

  Future<void> listen({SurahModel? surah, EditionModel? edition}) async {
    
    _initialize();
    _surah = surah ?? _surah;
    _edition = edition ?? _edition;
    
    if(_surah == null || _edition == null) {
      return;
    }

    _audioModel = AudioModel(
      edition: _edition!, 
      surah: _surah!
    ); 
    
    bool isPlaying = _player!.playing;

    await _player!.pause();
    emit(OnFetchingAudio(_audioModel!));
    
    duration = await _player!.setUrl(AudioRepository().getAudioUrlByAudioModel(_audioModel!));
    emit(OnAudioFetched(_audioModel!));

    if (isPlaying) {
      togglePlay();
    }
  } 
  
  Future<void> stop() async => await _player!.pause();
  Future<void> start() async => await _player!.play(); 

  Future<void> togglePlay() async {
    _initialize();
    switch (_player!.playing) {
      case true: await _player!.pause(); break;
      default: _player!.play();
    }
    emit(OnPlayerState(_audioModel, _player!.playing));
  }

  Future<void> seek(double position) async {
    _initialize();
    _player!.seek(Duration(seconds: position.toInt()));
  }

  bool isPlaying() {
    _initialize();
    return _player!.playing;
  }

  void distroy() async {
    _initialize();
    _player!.dispose();
    _player = null;
    duration = null;
    _audioModel = null;
    _surah = null;
    _edition = null;
    emit(PlayerInitialize());
  }
}

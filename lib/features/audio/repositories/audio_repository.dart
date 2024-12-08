import 'package:quran/core/apis/alquran_cloud.dart';
import 'package:quran/features/audio/models/audio_model/audio_model.dart';

class AudioRepository {
  String getAudioUrlByAudioModel(AudioModel audio) {
    return AlQuranCloudAPI.formatAudioUrl(
      audio.edition.bitrate, 
      audio.edition.identifier, 
      audio.surah.index,
    );
  }
}
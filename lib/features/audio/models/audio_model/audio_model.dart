import 'package:quran/features/audio/models/editions_model/edition_model.dart';
import 'package:quran/features/surah/models/surah_model.dart';

class AudioModel {
  final EditionModel edition;
  final SurahModel surah; 
  AudioModel({
    required this.edition,
    required this.surah,
  });
}

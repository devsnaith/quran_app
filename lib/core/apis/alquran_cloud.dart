import 'package:dio/dio.dart';

class AlQuranCloudAPI  {
  static get number => null;

  static Future<String?> fetchEditions() async {
    Dio http = Dio();
    Response status = await http.get("https://raw.githubusercontent.com/islamic-network/cdn/master/info/cdn_surah_audio.json");
    if (status.statusCode == 200) {
      return status.data;
    }
    return null;
  }
  static String formatAudioUrl(String bitrate, String edition, int surahNumber) {
    return "https://cdn.islamic.network/quran/audio-surah/$bitrate/$edition/$surahNumber.mp3";
  }
}
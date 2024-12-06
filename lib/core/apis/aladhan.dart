import 'package:dio/dio.dart';

class AladhanAPI {
  static Future<String?> getDateByZone(String zone) async {
    Dio http = Dio();
    Response status = await http.get("http://api.aladhan.com/v1/currentDate?zone=$zone");
    if (status.statusCode == 200) {
      return status.data["data"];
    }
    return null;
  }
  static Future<String?> getTimeByZone(String zone) async {
    Dio http = Dio();
    Response status = await http.get("http://api.aladhan.com/v1/currentTime?zone=$zone");
    if (status.statusCode == 200) {
      return status.data["data"];
    }
    return null;
  }
  static Future<Map<String, dynamic>?> getPrayTimesByZone(String date, double latitude, double longitude) async {
    Dio http = Dio();
    try {
      Response status = await http.get("http://api.aladhan.com/v1/timings/$date?latitude=$latitude&longitude=$longitude");
      if (status.statusCode == 200) {
        return status.data["data"]["timings"];
      }
    // ignore: empty_catches
    } catch (e) {}
    return null;
  }
}
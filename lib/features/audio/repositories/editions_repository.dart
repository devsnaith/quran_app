import 'dart:convert';
import 'package:quran/core/apis/alquran_cloud.dart';

class EditionsRepository {
  Future<List<dynamic>?> getEditionsAsJson() async {
    final String? data = await AlQuranCloudAPI.fetchEditions();
    final asJson = await json.decode(data!);
    return asJson;
  }
}
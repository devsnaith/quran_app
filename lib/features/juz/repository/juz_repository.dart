import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quran/features/juz/models/juz_model.dart';

class JuzRepository {

  Future<List<dynamic>> getJuzAsJson() async {
    final String data = await rootBundle.loadString("assets/json/juz.json");
    final asJson = await json.decode(data);
    return asJson;
  }

  List <JuzModel> _juzList = [];
  List <JuzModel> getListofJuz() => _juzList;
  void setListofJuz(List<JuzModel> list) => _juzList = list;

  JuzModel? selectedJuz;
  void selectJuz(JuzModel juz) => selectedJuz = juz;
  JuzModel? getSelectedJuz() => selectedJuz;

}
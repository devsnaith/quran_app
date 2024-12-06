import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quran/features/surah/models/surah_model.dart';

class SurahRepository {
  Map<int, List<int>> surahPagesNumber = {
    1: [1],
    76: [578, 579, 580],
    8: [177, 178, 179, 180, 181, 182, 183, 184, 185, 186]
  };

  Future<List<dynamic>> getSurahsAsJson() async {
    final String data = await rootBundle.loadString("assets/json/surah.json");
    final asJson = await json.decode(data);
    return asJson;
  }

  List<int> getPagesNumberBySurahModel(SurahModel model) {
    if(surahPagesNumber.containsKey(model.index)) {
      return surahPagesNumber[model.index]!;
    }
    return [];
  }
}
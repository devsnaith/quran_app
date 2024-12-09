import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:quran/features/surah/models/surah_model.dart';

class SurahRepository {
  Map<int, List<int>> surahPagesNumber = {
    1: [1],
    8: [177, 178, 179, 180, 181, 182, 183, 184, 185, 186],
    20: [312, 313, 314, 315, 316, 317, 318, 319, 320, 321],
    34: [428, 429, 430, 431, 432, 433, 434],
    35: [434, 435, 436, 437, 438, 439, 440],
    36: [440, 441, 442, 443, 444, 445],
    76: [578, 579, 580],
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
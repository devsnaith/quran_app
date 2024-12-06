import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/features/home/models/pray_item_model.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_pray_item.dart';

class PrayTimesRepository {

  final List<PrayTimeModel> _prayTimes = [
    const PrayTimeModel(prayName: 'Fajr', time: '04:40', timeIcon: FontAwesomeIcons.moon),
    const PrayTimeModel(prayName: 'Dzuhr', time: '04:40', timeIcon: FontAwesomeIcons.sun),
    const PrayTimeModel(prayName: 'Asr', time: '04:40', timeIcon: FontAwesomeIcons.cloudSun),
    const PrayTimeModel(prayName: 'Maghrib', time: '04:40', timeIcon: FontAwesomeIcons.sun),
    const PrayTimeModel(prayName: 'Isha', time: '04:40', timeIcon: FontAwesomeIcons.solidMoon),
  ];

  List<Widget> getPrayTimesAsWidgets() {
    List<Widget> widgets = [];
    for (var prayTime in _prayTimes) {
      widgets.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: PrayTimeItem(prayTimeModel: prayTime),
      ));
    }
    return widgets;
  }
}
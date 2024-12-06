import 'package:flutter/material.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:quran/core/apis/aladhan.dart';
import 'package:quran/features/home/models/pray_item_model.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_pray_item.dart';

class TimeDateRepository {

  String? _date;
  final Map<String, IconData> timesIcons = {
    "Fajr": FontAwesomeIcons.moon,
    "Sunrise": FontAwesomeIcons.cloudSun,
    "Dhuhr": FontAwesomeIcons.sun,
    "Asr": FontAwesomeIcons.cloudSun,
    "Maghrib": FontAwesomeIcons.cloudMoon,
    "Isha": FontAwesomeIcons.solidMoon
  };

  final List<PrayTimeModel> _prayTimes = [];
  
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

  String getCurrentDate() {
    if(_date == null) {
      return "Getting Date...";
    }
    DateTime date = DateFormat('dd-MM-yyyy').parse(_date!);
    return DateFormat('dd MMMM yyyy').format(date);
  }

  String getCurrentTime() {
    if(_date == null) {
      return "--:--";
    }
    DateTime date = DateTime.now();
    return DateFormat('jm').format(date);
  }

  void updateLocation(LocationData locationDate) async {
    final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
    _date = await AladhanAPI.getDateByZone(currentTimeZone) ?? _date;
    Map<String, dynamic>? times = await AladhanAPI.getPrayTimesByZone(_date!, locationDate.latitude!, locationDate.longitude!);
    if(times != null && times.isNotEmpty) {
      _prayTimes.clear();
      times.forEach((key, value) {
        if(timesIcons.containsKey(key)) {
          String time = DateFormat('jm').format(DateFormat('H:m').parse(value));
          _prayTimes.add(PrayTimeModel(prayName: key, time: time, timeIcon: timesIcons[key]!));
        }
      });
    }
  }
}
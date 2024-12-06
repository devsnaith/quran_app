import 'package:flutter/material.dart';

class PrayTimeModel {
  const PrayTimeModel({
    required this.prayName,
    required this.time,
    required this.timeIcon,
  });
  final String prayName;
  final String time;
  final IconData timeIcon;
}
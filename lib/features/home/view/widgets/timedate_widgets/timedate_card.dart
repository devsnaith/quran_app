import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_date_row.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_clock_row.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_prays_group.dart';

class PrayerTimeSection extends StatelessWidget {
  const PrayerTimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: max(MediaQuery.of(context).size.height / 2.2, 230),
      decoration: BoxDecoration(
        color: AppColors.timedateCardBgColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateRow(),
          PrayClock(),
          PrayTimesRow(),
        ],
      ),
    );
  }
}


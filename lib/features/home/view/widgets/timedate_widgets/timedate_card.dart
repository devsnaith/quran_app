import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/home/repositories/timedate_repository.dart';
import 'package:quran/features/home/view-model/cubit/location_cubit.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_date_row.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_clock_row.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_prays_group.dart';

class PrayerTimeSection extends StatefulWidget {
  const PrayerTimeSection({super.key});

  @override
  State<PrayerTimeSection> createState() => _PrayerTimeSectionState();
}

class _PrayerTimeSectionState extends State<PrayerTimeSection> {

  Timer? timer;
  int lastFetchingTime = 0;
  late TimeDateRepository timeDateRepository;

  void initializeTimer() {
    if (timer != null && timer!.isActive) {
      return;
    }

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if ((DateTime.now().millisecondsSinceEpoch - lastFetchingTime) > 10000) {
        lastFetchingTime = DateTime.now().millisecondsSinceEpoch;
        context.read<LocationCubit>().fetchLocation(false);
      }else {
        setState(() {});
      }
    });
  }

  @override
  void initState() {
    super.initState();
    timeDateRepository = context.read<LocationCubit>().getTimeDateRepository();
    initializeTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

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
      child: BlocBuilder<LocationCubit, LocationState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateRow(timeDateRepository),
              PrayClock(timeDateRepository),
              PrayTimesRow(timeDateRepository),
            ],
          );
        },
      ),
    );
  }
}

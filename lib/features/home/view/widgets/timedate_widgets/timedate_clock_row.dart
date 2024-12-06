import 'package:flutter/material.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/home/repositories/timedate_repository.dart';

class PrayClock extends StatelessWidget {
  const PrayClock(this.timeDateRepository, {super.key});

  final TimeDateRepository timeDateRepository; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(timeDateRepository.getCurrentTime(), style: FontsStyle.w990Lato(38)),
          // Text("Fajr 3 hours 9 min left", style: FontsStyle.w990Lato(16)),
        ],
      ),
    );
  }
}

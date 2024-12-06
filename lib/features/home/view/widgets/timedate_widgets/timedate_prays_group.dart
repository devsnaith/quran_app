import 'package:flutter/material.dart';
import 'package:quran/features/home/repositories/timedate_repository.dart';

class PrayTimesRow extends StatelessWidget {
  const PrayTimesRow(this.timeDateRepository, {super.key});
  
  final TimeDateRepository timeDateRepository; 

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: constraints.maxWidth,
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: timeDateRepository.getPrayTimesAsWidgets()
            ),
          ),
        ),
      );
    });
  }
}

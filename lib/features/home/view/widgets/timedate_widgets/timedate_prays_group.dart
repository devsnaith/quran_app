import 'package:flutter/material.dart';
import 'package:quran/features/home/repositories/timedate_repository.dart';

class PrayTimesRow extends StatefulWidget {
  const PrayTimesRow({super.key});

  @override
  State<PrayTimesRow> createState() => _PrayTimesRowState();
}

class _PrayTimesRowState extends State<PrayTimesRow> {
  
  PrayTimesRepository repository = PrayTimesRepository();

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
              children: repository.getPrayTimesAsWidgets()
            ),
          ),
        ),
      );
    });
  }
}

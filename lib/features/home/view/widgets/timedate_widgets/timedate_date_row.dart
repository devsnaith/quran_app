import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/home/repositories/timedate_repository.dart';

class DateRow extends StatelessWidget {
  const DateRow(this.timeDateRepository, {super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  timeDateRepository.getCurrentDate(),
                  style: FontsStyle.w990ItalicLato(24),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: FaIcon(
                    FontAwesomeIcons.calendarDays,
                    color: AppColors.timedateCardTextFgColor,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/home/models/pray_item_model.dart';

class PrayTimeItem extends StatelessWidget {
  const PrayTimeItem({
    required this.prayTimeModel,
    super.key
  });

  final PrayTimeModel prayTimeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          prayTimeModel.prayName,
          style: FontsStyle.lato(20, Colors.white),
        ),
        FaIcon(
          prayTimeModel.timeIcon,
          color: AppColors.prayTimeItemColor,
          size: 20,
        ),
        Text(
          prayTimeModel.time,
          style: FontsStyle.w990Lato(18),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';

class SebhaInfoCard extends StatelessWidget {
  const SebhaInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: AppColors.sebhaInfoCardBgColor,
        child: ListTile(
          leading: const Icon(FlutterIslamicIcons.tasbih),
          title: Text(AppTexts.sebhaInfoCardTitle, style: FontsStyle.lato(16, AppColors.sebhaInfoCardTextFgColor)),
          subtitle: Text(AppTexts.sebhaInfoCardSubTitle, style: FontsStyle.lato(13, AppColors.sebhaInfoCardTextFgColor)),
        ),
      ),
    );
  }
}
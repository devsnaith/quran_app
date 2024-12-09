import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';

class EditionsInfoCard extends StatelessWidget {
  const EditionsInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(AppTexts.editionsInfoCardTitle, style: FontsStyle.lato(16, AppColors.editionsInfoCardTextFgColor)),
      subtitle: Text(AppTexts.editionsInfoCardSubTitle, style: FontsStyle.lato(13, AppColors.editionsInfoCardTextFgColor)),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';

class EditionsInfoCard extends StatelessWidget {
  const EditionsInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Choose the reciter", style: FontsStyle.lato(16, AppColors.sebhaInfoCardTextFgColor)),
      subtitle: Text("Please select the reciter you want to listen to.", style: FontsStyle.lato(13, AppColors.sebhaInfoCardTextFgColor)),
    );
  }
}
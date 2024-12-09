import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';

class SurahsSearchBar extends StatelessWidget {
  const SurahsSearchBar(this.controller, {super.key});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      leading: const Icon(Icons.search),
      title: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: AppTexts.surahsSearchBarText,
        ),
        style: FontsStyle.lato(16, AppColors.surahsSearchBarTextFgColor),
      ),
      // subtitle: Text("Please select the surah you want to listen to.", style: FontsStyle.lato(13, AppColors.sebhaInfoCardTextFgColor)),
    );
  }
}
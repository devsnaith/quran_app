import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/surah/models/surah_model.dart';

class SurahAudioCard extends StatelessWidget {
  const SurahAudioCard(this.surah, {super.key});
  final SurahModel surah;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: AppColors.surahAudioCardBoxShadowColor,
              blurRadius: 2,
            ),
          ],
          color: AppColors.surahAudioCardBgColor,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              child: LayoutBuilder(builder: (context, constraints) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      color: AppColors.surahAudioCardIconColor,
                      FlutterIslamicIcons.solidQuran2,
                      size: min(constraints.maxWidth, constraints.maxHeight) / 1.5,
                    ),
                  ),
                );
              }),
            ),
            ListTile(
              leading: Text(
                surah.index.toString(),
                style: FontsStyle.lato(15, AppColors.surahAudioCardTextFgColor)
              ),
              title: Text(surah.title, style: FontsStyle.lato(13, AppColors.surahAudioCardTextFgColor)),
              subtitle: Text(surah.titleAr, style: FontsStyle.lato(15, AppColors.surahAudioCardTextFgColor)),
            ),
          ],
        ),
      ),
    );
  }
  
}
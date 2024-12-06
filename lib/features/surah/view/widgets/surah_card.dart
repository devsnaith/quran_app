import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/surah/models/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard(this.surah, {super.key});
  final SurahModel surah;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.surahCardBgColor,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(FlutterIslamicIcons.solidQuran2),
            subtitle: Text("Index: ${surah.index} - Verses: ${surah.count} - Type: ${surah.type}", style: FontsStyle.lato(13, Colors.black)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(surah.title, style: FontsStyle.lato(15, AppColors.surahCardTextFgColor)),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(surah.titleAr, style: FontsStyle.lato(15, AppColors.surahCardTextFgColor))
                )
              ],
            ),
          ),
      ]),
    );
  }
  
}
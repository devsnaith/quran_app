import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/audio/models/audio_model/audio_model.dart';

class AppAudioDetails extends StatelessWidget {
  const AppAudioDetails(this.audio, {super.key});
  final AudioModel audio;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Card(
        color: AppColors.appAudioDetailsBgColor,
        shape: const CircleBorder(),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.music_note),
        )),
        title: Text(audio.surah.title, style: FontsStyle.fg_w990Lato(16, AppColors.appAudioDetailsTextsFgColor)),
        subtitle: LayoutBuilder(
          builder: (context, size) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(audio.edition.englishName, 
                style: FontsStyle.fg_w990Lato(14,  AppColors.appAudioDetailsTextsFgColor),
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
            );
          }
        ),
      );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
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
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2,
            ),
          ],
          color: Colors.teal.shade200,
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
                      color: const Color.fromARGB(255, 109, 172, 165),
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
                style: FontsStyle.lato(15, Colors.black)
              ),
              title: Text(surah.title, style: FontsStyle.lato(13, Colors.black)),
              subtitle: Text(surah.titleAr, style: FontsStyle.lato(15, Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
  
}
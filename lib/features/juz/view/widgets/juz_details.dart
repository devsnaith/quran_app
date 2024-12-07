import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/juz/models/juz_model.dart';

class JuzDetails extends StatelessWidget {
  const JuzDetails(this.juzModel, {super.key});

  final JuzModel juzModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: Card(
        color: AppColors.juzInfoCardBgColor,
        child: Row(
          children: [
            SizedBox(
              width: 80,
              height: 90,
              child: AnimatedFlipCounter(
                value: juzModel.id,
                textStyle: FontsStyle.fg_w990Lato(32, AppColors.juzInfoCardTextFgColor),
              ),
            ),
            Expanded(
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth()
                },
                children: [
                  TableRow(
                    children: [
                      Text("${AppTexts.juzInfoCardFromText} ${juzModel.start.name}", style: FontsStyle.fg_w990Lato(14, AppColors.juzInfoCardTextFgColor)),
                      Text("${AppTexts.juzInfoCardToText} ${juzModel.end.name}", style: FontsStyle.fg_w990Lato(14, AppColors.juzInfoCardTextFgColor)),
                    ]
                  ),
                  TableRow(
                    children: [
                      Text("${AppTexts.juzInfoCardVerseNumberText} ${juzModel.start.verse}", style: FontsStyle.fg_w990Lato(14, AppColors.juzInfoCardTextFgColor)),
                      Text("${AppTexts.juzInfoCardVerseNumberText} ${juzModel.end.verse}", style: FontsStyle.fg_w990Lato(14, AppColors.juzInfoCardTextFgColor)),
                    ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
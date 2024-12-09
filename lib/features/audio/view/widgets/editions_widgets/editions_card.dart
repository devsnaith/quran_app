import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/audio/models/editions_model/edition_model.dart';

class EditionCardDetails extends StatelessWidget {
  const EditionCardDetails(this.editionModel, {super.key});

  final EditionModel editionModel; 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.editionCardDetailsBgColor,
      child: ListTile(
        leading: const Icon(FontAwesomeIcons.headphones),
        title: Text(editionModel.name, style: FontsStyle.lato(13, AppColors.editionCardDetailsTextFgColor)),
        subtitle: Text("${AppTexts.editionCardDetailsLanguageText}: ${editionModel.language} . ${AppTexts.editionCardDetailsBitrateText}: ${editionModel.bitrate}", style: FontsStyle.lato(12, AppColors.editionCardDetailsTextFgColor)),
      ),
    );
  }
  
}
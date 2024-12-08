import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/audio/models/editions_model/edition_model.dart';

class EditionCardDetails extends StatelessWidget {
  const EditionCardDetails(this.editionModel, {super.key});

  final EditionModel editionModel; 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal.shade200,
      child: ListTile(
        leading: const Icon(FontAwesomeIcons.headphones),
        title: Text(editionModel.name, style: FontsStyle.lato(13, Colors.black)),
        subtitle: Text("Language: ${editionModel.language} . Bitrate: ${editionModel.bitrate}", style: FontsStyle.lato(12, Colors.black)),
      ),
    );
  }
  
}
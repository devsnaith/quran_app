import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/juz/models/juz_model.dart';
import 'package:quran/features/juz/view-model/cubit/juz_cubit.dart';

class JuzCard extends StatelessWidget {
  const JuzCard(this.juzModel, {super.key});

  final JuzModel juzModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<JuzCubit>().viewJuz(juzModel),
      child: Card(
        color: AppColors.juzScreenElementsBgColor,
        child: Stack(
          alignment: const Alignment(0, 0),
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return Icon(
                FlutterIslamicIcons.solidMosque,
                size: constraints.maxHeight - 8,
                color: AppColors.juzScreenElementsBackIconBgColor,
              );
            }),
            ListTile(
              title: Text(AppTexts.juzElementsCardItemTitle,
              style: FontsStyle.fg_w990Lato(15, AppColors.juzScreenElementsTextFgColor)),
              subtitle: Text("${juzModel.id}",
              textAlign: TextAlign.center,
              style: FontsStyle.fg_w990Lato(18, AppColors.juzScreenElementsTextFgColor)),
            )
          ],
        )
      ),
    );
  }
}

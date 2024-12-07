import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/juz/models/juz_model.dart';
import 'package:quran/features/juz/view-model/cubit/juz_cubit.dart';
import 'package:quran/features/juz/view/widgets/juz_details.dart';

class JuzInfoCard extends StatefulWidget {
  const JuzInfoCard({super.key});

  @override
  State<JuzInfoCard> createState() => _JuzInfoCardState();
}

class _JuzInfoCardState extends State<JuzInfoCard> {

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  JuzModel? juzModel;

  @override
  Widget build(BuildContext context) {
    return BlocListener<JuzCubit, JuzState>(
      listener: (context, state) {
        state.maybeWhen(
          juzSelected: (model) {
            setState(() {
              juzModel = model;
              if(cardKey.currentState!.isFront) {
                cardKey.currentState?.toggleCard();
              }
            });
          },
          orElse: () {
            if(!cardKey.currentState!.isFront) {
              cardKey.currentState?.toggleCard(); 
            }
          }, 
        );
      },
      child: SizedBox(
        height: 100,
        child: Center(
          child: GestureDetector(
            child: FlipCard(
              key: cardKey,
              direction: FlipDirection.VERTICAL,
              flipOnTouch: false,
              back: juzModel == null ? const SizedBox.shrink() : JuzDetails(juzModel!),
              front: Card(
                color: AppColors.juzInfoCardBgColor,
                child: ListTile(
                  leading: const Icon(Icons.lightbulb),
                  title: Text(AppTexts.juzInfoCardTitle,
                      style: FontsStyle.lato(16, AppColors.juzInfoCardTextFgColor)),
                  subtitle: Text(AppTexts.juzInfoCardSubTitle,
                      style: FontsStyle.lato(13, AppColors.juzInfoCardTextFgColor)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

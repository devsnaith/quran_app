import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/widgets/simple_indicator.dart';
import 'package:quran/features/audio/models/editions_model/edition_model.dart';
import 'package:quran/features/audio/view-model/edition_cubit/edition_cubit.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_player.dart';
import 'package:quran/features/audio/view/widgets/editions_widgets/editions_list.dart';
import 'package:quran/features/audio/view/widgets/surahs_widgets/surahs_list.dart';
import 'package:quran/features/surah/models/surah_model.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  EditionModel? editionModel;
  SurahModel? surahModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const AppAudioPlayer(),
            BlocBuilder<EditionCubit, EditionState>(
              builder: (context, state) {
                return state.map(
                  initial: (value) {
                    context.read<EditionCubit>().fetchEditions();
                    return SimpleCirculIndicator(AppColors.editionsListBgColor);
                  }, 
                  editionsFetched: (value) {
                    return const EditionsList();
                  }, 
                  editionsSelected: (value) => const SurahsList(),
                );
              }
            ),

          ]
      ),
    );
  }
}

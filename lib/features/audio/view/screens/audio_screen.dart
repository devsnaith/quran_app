import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/audio/models/audio_model/audio_model.dart';
import 'package:quran/features/audio/models/editions_model/edition_model.dart';
import 'package:quran/features/audio/view-model/edition_cubit/edition_cubit.dart';
import 'package:quran/features/audio/view-model/surah_audio_cubit/surah_audio_cubit.dart';
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

          Builder(builder: (context) {
            return MultiBlocListener(
              listeners: [
                BlocListener<EditionCubit, EditionState>(listener: (context, state) {
                  setState(() => state.mapOrNull(editionsSelected: (value) => editionModel = value.edition));
                }),
                BlocListener<SurahAudioCubit, SurahAudioState>(listener: (context, state) {
                  setState(() => state.mapOrNull(onSurahSelect: (value) => surahModel = value.surah));
                }),
              ],
              child: Builder(builder: (context) {
                if (surahModel == null || editionModel == null) {
                  return BlocBuilder<EditionCubit, EditionState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        editionsSelected: (value) => const SurahsList(),
                        orElse: () => const EditionsList(),
                      );
                    }
                  );
                }
                context.read<EditionCubit>().fetchEditions();
                return AppAudioPlayer(
                  AudioModel(
                    edition: editionModel!,
                    surah: surahModel!,
                  )
                ); 
              }),
            );
          }),
        ]
      ),
    );
  }
}


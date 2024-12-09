import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/audio/view-model/edition_cubit/edition_cubit.dart';
import 'package:quran/features/audio/view-model/player_cubit/player_cubit.dart';
import 'package:quran/features/audio/view-model/surah_audio_cubit/surah_audio_cubit.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_details.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_player_play_toggle.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_player_slider.dart';

class AppAudioPlayer extends StatefulWidget {
  const AppAudioPlayer({super.key});

  @override
  State<AppAudioPlayer> createState() => _AppAudioPlayerState();
}

class _AppAudioPlayerState extends State<AppAudioPlayer> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<EditionCubit, EditionState>(listener: (context, state) {
          state.mapOrNull(
              editionsSelected: (value) => context
                  .read<AppPlayerCubit>()
                  .listen(edition: value.edition));
        }),
        BlocListener<SurahAudioCubit, SurahAudioState>(
            listener: (context, state) {
          state.mapOrNull(
              onSurahSelect: (value) =>
                  context.read<AppPlayerCubit>().listen(surah: value.surah));
        }),
      ],
      child: BlocBuilder<AppPlayerCubit, AppPlayerState>(
        builder: (context, state) {
          
          if(context.read<AppPlayerCubit>().getSelectedAudio() == null) {
            return const SizedBox.shrink();
          }

          return Dismissible(
            key: const Key("Audio Dismissible Widget"),
            onDismissed: (direction) {
              context.read<AppPlayerCubit>().distroy();
              context.read<EditionCubit>().fetchEditions();
              context.read<SurahAudioCubit>().unSelect();
            },
            child: Card(
              color: AppColors.appAudioPlayerBgColor,
              child: const Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AppAudioDetails(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: AudioPlayerPlayButton(),
                        ),
                      ],
                    ),
                  ),
                  AudioPlayerSlider()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

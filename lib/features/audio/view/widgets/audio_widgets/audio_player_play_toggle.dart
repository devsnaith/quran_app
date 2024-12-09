import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/features/audio/view-model/player_cubit/player_cubit.dart';

class AudioPlayerPlayButton extends StatelessWidget {
  const AudioPlayerPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppPlayerCubit, AppPlayerState>(
      builder: (context, state) {
        bool isPlaying = context.read<AppPlayerCubit>().isPlaying();
        return IconButton(
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(isPlaying ? FontAwesomeIcons.pause : FontAwesomeIcons.play),
          ),
          onPressed: () => context.read<AppPlayerCubit>().togglePlay(),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/audio/view-model/player_cubit/player_cubit.dart';

class AudioPlayerSlider extends StatefulWidget {
  const AudioPlayerSlider({super.key});

  @override
  State<AudioPlayerSlider> createState() => _AudioPlayerSliderState();
}

class _AudioPlayerSliderState extends State<AudioPlayerSlider> {
  
  Duration position = const Duration(seconds: 0);
  Duration duration = const Duration(seconds: 0);

  String _printDuration(Duration duration) {
    String negativeSign = duration.isNegative ? '-' : '';
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60).abs());
    return "$negativeSign${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppPlayerCubit, AppPlayerState>(
      builder: (context, state) {

        if(state is OnPositionChange) {
          duration = state.duration;
          if(context.read<AppPlayerCubit>().isPlaying()) {
            position = state.position;
          }
          
          if(duration.inMicroseconds == position.inMicroseconds) {
            position = const Duration(seconds: 0);
            context.read<AppPlayerCubit>().seek(0);
            context.read<AppPlayerCubit>().stop();
          }
        }

        return Builder(builder: (context) {
          return Transform.translate(
            offset: const Offset(0, -10),
            child: Column(
              children: [
                Slider(
                  value: position.inSeconds.toDouble(),
                  max: duration.inSeconds.toDouble(),
                  activeColor: AppColors.audioPlayerSliderActiveColor,
                  thumbColor: AppColors.audioPlayerSliderThumbColor,
                  inactiveColor: AppColors.audioPlayerSliderInactiveColor,
                  onChangeStart: (value) => context.read<AppPlayerCubit>().stop(),
                  onChangeEnd: (value) {
                    context.read<AppPlayerCubit>().seek(value);
                    context.read<AppPlayerCubit>().start();
                  },
                  onChanged: (value) {
                    setState(() {
                      position = Duration(seconds: value.toInt());
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _printDuration(position),
                        style: FontsStyle.lato(10, AppColors.audioPlayerSliderPositionAndDurationTextFgColors),
                      ),
                      Text(
                        AppTexts.audioPlayerDismissibleHintText,
                        style: FontsStyle.lato(10, AppColors.audioPlayerDismissibleHintTextFgColors),
                      ),
                      Text(
                        _printDuration(duration),
                        style: FontsStyle.lato(10, AppColors.audioPlayerSliderPositionAndDurationTextFgColors),
                      ),
                    ]
                  ),
                )
              ],
            ),
          );
        });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/core/constants/app_colors.dart';

class AudioPlayerSlider extends StatefulWidget {
  const AudioPlayerSlider(this.player, {super.key});
  final AudioPlayer player;

  @override
  State<AudioPlayerSlider> createState() => _AudioPlayerSliderState();
}

class _AudioPlayerSliderState extends State<AudioPlayerSlider> {

  double position = 0;
  double duration = 1;

  @override
  void initState() {
    super.initState();
    widget.player.positionStream.listen((event) {
      position = event.inSeconds.toDouble();
      if (mounted) {
        setState(() {});
      }
    });
    widget.player.durationStream.listen((event) {
      duration = (event ?? const Duration(seconds: 1)).inSeconds.toDouble();  
    });
  }

  @override
  void dispose() {
    super.dispose();
    widget.player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Transform.translate(
            offset: const Offset(0, -10),
            child: Slider(
              value: position,
              max: duration,
              onChangeStart: (value) async => await widget.player.stop(),
              onChangeEnd: (value) async {
                widget.player.seek(Duration(seconds: value.toInt()));
                await widget.player.play();
              },
              activeColor: AppColors.audioPlayerSliderActiveColor,
              thumbColor: AppColors.audioPlayerSliderthumbColor,
              inactiveColor: AppColors.audioPlayerSliderinactiveColor,
              onChanged: (value) {
                setState(() => position = value);
              },
            ),
        );
      }
    );
  }
}

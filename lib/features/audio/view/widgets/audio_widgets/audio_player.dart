import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/audio/models/audio_model/audio_model.dart';
import 'package:quran/features/audio/repositories/audio_repository.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_details.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_player_play_toggle.dart';
import 'package:quran/features/audio/view/widgets/audio_widgets/audio_player_slider.dart';

class AppAudioPlayer extends StatefulWidget {
  
  const AppAudioPlayer(this.audio, {super.key});
  final AudioModel audio;

  @override
  State<AppAudioPlayer> createState() => _AppAudioPlayerState();
}

class _AppAudioPlayerState extends State<AppAudioPlayer> {
  
  final AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    final AudioRepository repository = AudioRepository(); 
    String audioUrl = repository.getAudioUrlByAudioModel(widget.audio);
    await player.setUrl(audioUrl);
  }

  @override
  Widget build(BuildContext context) {  
    return Card(
      color: AppColors.appAudioPlayerBgColor,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AppAudioDetails(widget.audio),
                Align(
                  alignment: Alignment.centerRight,
                  child: AudioPlayerPlayButton(player),
                ),
              ],
            ),
          ),
          AudioPlayerSlider(player)
        ],
      ),
    );
  }
}

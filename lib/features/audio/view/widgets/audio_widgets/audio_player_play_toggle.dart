import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';

class AudioPlayerPlayButton extends StatefulWidget {
  const AudioPlayerPlayButton(this.player, {super.key});
  final AudioPlayer player;

  @override
  State<AudioPlayerPlayButton> createState() => _AudioPlayerPlayButtonState();
}

class _AudioPlayerPlayButtonState extends State<AudioPlayerPlayButton> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: widget.player.playerStateStream,
      builder: (context, state) {
        bool isPlaying = (state.data == null) ? false : state.data!.playing;
        return IconButton(
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(isPlaying ? FontAwesomeIcons.pause : FontAwesomeIcons.play),
          ),
          onPressed: () async {
            
            if (state.data == null) {
              return;
            }

            if(isPlaying){
              widget.player.pause();
            }else {
              widget.player.play();
            }
            
          },
        );
      }
    );
  }
}
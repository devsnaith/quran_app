import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/audio/models/audio_model/audio_model.dart';
import 'package:quran/features/audio/view-model/player_cubit/player_cubit.dart';

class AppAudioDetails extends StatelessWidget {
  const AppAudioDetails({super.key});

  @override
  Widget build(BuildContext context) {
    String surah = "";
    String edition = "";        
    return BlocBuilder<AppPlayerCubit, AppPlayerState>(
      builder: (context, state) {

        if (state is OnAudioFetched) {
          surah = state.audioModel.surah.title;
          edition = state.audioModel.edition.englishName;
        }else if(state is OnPlayerState || state is OnPositionChange) {
          AudioModel? model = context.read<AppPlayerCubit>().getSelectedAudio();
          if(model != null){
            surah = model.surah.title;
            edition = model.edition.englishName;
          }
        }

        return ListTile(
          leading: Card(
              color: AppColors.appAudioDetailsBgColor,
              shape: const CircleBorder(),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.music_note),
              )),
          title: Text(surah,
              style: FontsStyle.fg_w990Lato(
                  16, AppColors.appAudioDetailsTextsFgColor)),
          subtitle: LayoutBuilder(builder: (context, size) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                edition,
                style: FontsStyle.fg_w990Lato(
                    14, AppColors.appAudioDetailsTextsFgColor),
                overflow: TextOverflow.fade,
                maxLines: 1,
              ),
            );
          }),
        );

      },
    );
  }
}

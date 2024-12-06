import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/surah/models/surah_model.dart';
import 'package:quran/features/surah/repository/surah_repository.dart';
import 'package:quran/features/surah/view-model/cubit/surah_cubit.dart';
import 'package:quran/features/surah/view/screens/surah_view.dart';
import 'package:quran/features/surah/view/widgets/surah_card.dart';

class SurahScreen extends StatelessWidget {
  const SurahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SurahRepository rurahRepository = context.read<SurahCubit>().getSurahRepository();
    return BlocBuilder<SurahCubit, SurahState>(builder: (context, state) {
      return state.map(
        initial: (value) {
          context.read<SurahCubit>().fetchSurahs();
          return const Center(child: CircularProgressIndicator());
        },
        fetching: (value) {
          return const Center(child: CircularProgressIndicator());
        },
        fetched: (value) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView.builder(
              itemCount: value.surahs.length,
              itemBuilder: (context, index) {
                SurahModel model = value.surahs[index];
                if (rurahRepository.getPagesNumberBySurahModel(model).isEmpty) {
                  return const SizedBox.shrink();
                }
                return GestureDetector(
                  onTap: () {
                    List<int> pages = rurahRepository.getPagesNumberBySurahModel(model);
                    SurahView view = SurahView(pages, pages.length - 1);
                    showImageViewerPager(
                      context, view, 
                      useSafeArea: false, 
                      doubleTapZoomable: true,
                    );
                  },
                  child: SurahCard(model),
                );
              }),
          );
        },
      );
    });
  }
  
}
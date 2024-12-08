import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/audio/view-model/edition_cubit/edition_cubit.dart';
import 'package:quran/features/audio/view-model/surah_audio_cubit/surah_audio_cubit.dart';
import 'package:quran/features/audio/view/widgets/surahs_widgets/surah_audio_card.dart';
import 'package:quran/features/audio/view/widgets/surahs_widgets/surahs_info_card.dart';
import 'package:quran/features/surah/models/surah_model.dart';
import 'package:quran/features/surah/view-model/cubit/surah_cubit.dart';

class SurahsList extends StatefulWidget {
  const SurahsList({super.key});

  @override
  State<SurahsList> createState() => _SurahsListListState();
}

class _SurahsListListState extends State<SurahsList> {

  TextEditingController controller = TextEditingController();
  String filter = "";

  @override
  void initState() {
    super.initState();
    controller.addListener(() => setState(() {}));
  }

  void onSurahSelect(SurahModel surah) {
    context.read<SurahAudioCubit>().selectSurah(surah);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.teal.shade100,
        child: Column(
          children: [
            SurahsSearchBar(controller),
            Expanded(
              child: BlocBuilder<SurahCubit, SurahState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const Center(child: CircularProgressIndicator()),
                    initial: (value) {
                      context.read<SurahCubit>().fetchSurahs();
                      return const Center(child: CircularProgressIndicator());
                    },
                    fetched: (value) {
                      List<SurahModel> surahs = [];
                      value.surahs.map((surah) {
                        if (controller.text.isNotEmpty && !(surah.title.contains(controller.text) | surah.titleAr.contains(controller.text))) {
                          return;
                        }
                        surahs.add(surah);
                      }).toList();

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GridView.builder(
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () => onSurahSelect(surahs[index]),
                            child: SurahAudioCard(surahs[index])
                          ),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            mainAxisExtent: 100
                          ),
                          itemCount: surahs.length,
                        ),
                      );
                    },
                  );
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.teal,
                child: InkWell(
                  onTap: () => context.read<EditionCubit>().fetchEditions(),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Center(
                      child: Text(
                        "Change The Reciter",
                        style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold, 
                          color: Colors.teal.shade100
                        ),  
                      ),
                    ),
                  ),
                ),
              ),
            )
        ]),
      ),
    );
  }
}

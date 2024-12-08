import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/juz/models/juz_model.dart';
import 'package:quran/features/juz/repository/juz_repository.dart';
import 'package:quran/features/juz/view-model/cubit/juz_cubit.dart';
import 'package:quran/features/juz/view/widgets/juz_card.dart';
import 'package:quran/features/juz/view/widgets/juz_info_card.dart';

class JuzScreen extends StatefulWidget {
  const JuzScreen({super.key});

  @override
  State<JuzScreen> createState() => _JuzScreenState();
}

class _JuzScreenState extends State<JuzScreen> {

  @override
  Widget build(BuildContext context) {
    
    JuzCubit juzCubit = context.read<JuzCubit>();
    JuzRepository juzRepository = juzCubit.getJuzRepository();

    if (juzRepository.getListofJuz().isEmpty) {
      juzCubit.fetchJuz();
    }

    return BlocListener<JuzCubit, JuzState>(
      listener: (context, state) {
        state.mapOrNull(fetched: (value) => setState(() {}));
      },
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1),
        child: Builder(
          builder: (context) {

            List<JuzModel> list = juzRepository.getListofJuz();
            if (list.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }
            
            return Column(children: [
              
              const JuzInfoCard(),
              Expanded(
                child: Card(
                  color: AppColors.juzScreenElementsGroupBgColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(

                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisExtent: 100
                      ),

                      itemBuilder: (context, index) => JuzCard(list[index]),
                      itemCount: list.length,

                    ),
                  ),
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}

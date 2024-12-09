import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/audio/view-model/edition_cubit/edition_cubit.dart';
import 'package:quran/features/audio/view/widgets/editions_widgets/editions_card.dart';
import 'package:quran/features/audio/view/widgets/editions_widgets/editions_info_card.dart';

class EditionsList extends StatefulWidget {
  const EditionsList({super.key});

  @override
  State<EditionsList> createState() => _EditionsListState();
}

class _EditionsListState extends State<EditionsList> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: AppColors.editionsListBgColor,
        child: Column(
          children: [
            const EditionsInfoCard(),
            Expanded(
              child: BlocBuilder<EditionCubit, EditionState>(
                builder: (context, state) {
                  return state.map(
              
                    editionsSelected: (value) {
                      return Center(
                        child: GestureDetector(
                          onTap: () => context.read<EditionCubit>().fetchEditions(),
                          child: EditionCardDetails(value.edition),
                        )
                      );
                    },
              
                    initial: (value) {
                      context.read<EditionCubit>().fetchEditions();
                      return const Center(child: CircularProgressIndicator());
                    },
              
                    editionsFetched: (value) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10, right: 10, left: 10,
                        ),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return SizedBox(
                            height: constraints.maxHeight,
                            child: ListView.builder(
                              itemCount: value.editions.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () => context.read<EditionCubit>().select(value.editions[index]),
                                child: EditionCardDetails(value.editions[index]),
                              ),  
                            ),
                          );
                        }),
                      );
                    },
              
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

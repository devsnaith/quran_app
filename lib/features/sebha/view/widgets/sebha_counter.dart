import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/sebha/view-model/cubit/sebha_cubit.dart';

class SebhaCounter extends StatelessWidget {
  const SebhaCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.sebhaCounterBgColor,
                    borderRadius: const BorderRadius.all(Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 16),
                  child: BlocBuilder<SebhaCubit, SebhaState>(
                    builder: (context, state) {
                      int counter = 0;
                      if(state is SebhaIncrementEvent) {
                        counter = state.counter;
                      }

                      return AnimatedFlipCounter(
                        duration: const Duration(milliseconds: 500),
                        textStyle:
                            FontsStyle.lato(32, AppColors.sebhaCounterTextFgColor),
                        padding: const EdgeInsets.all(10),
                        value: counter,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

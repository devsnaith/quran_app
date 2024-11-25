import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/onboarding.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/features/introduction/repository/introduction_repository.dart';
import 'package:quran/features/introduction/view-model/cubit/introduction_cubit.dart';
import 'package:quran/features/introduction/view/widgets/introduction_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreen();
}

class _IntroductionScreen extends State<IntroductionScreen> {

  late IntroductionCubit cubit;
  late List<IntroductionPage> pages;

  @override
  void initState() {
    super.initState();
    
    cubit = context.read<IntroductionCubit>();
    IntroductionRepository repository = cubit.getIntroductionRepository();
    pages = repository.getAllIntroductionModelsAsPages();
  }

  int currentIndex = 0;
  void onPageChanges(double netDragDistance, int pagesLength, int currentIndex, SlideDirection slideDirection) {
    this.currentIndex = currentIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Onboarding(
          swipeableBody: pages,
          onPageChanges: onPageChanges,
          startIndex: 0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: currentIndex < pages.length - 1 ? AnimatedSmoothIndicator(    
                  activeIndex: currentIndex,
                  count: pages.length,
                  effect: const ExpandingDotsEffect(), 
                ) : OutlinedButton(
                  onPressed: () => cubit.introductionCompleted(),
                   child: const Text(AppTexts.endIntroductionPageButtonText)
                ),
              ),
            ],
          ),
        ),
      ]
    );
  }
}

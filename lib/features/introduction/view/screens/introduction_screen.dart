import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onboarding/onboarding.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/core/widgets/arabesque.dart';
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
    return Scaffold(
      backgroundColor: AppColors.introductionPageBgColor,
      body: Stack(
        children: [
          const ArabesqueWidget(),
          Onboarding(
            swipeableBody: pages,
            onPageChanges: onPageChanges,
            startIndex: 0,
          ),
          SafeArea(
            child: SizedBox(
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
                      effect: ExpandingDotsEffect(
                        dotColor: AppColors.introductionPageIndicatorDotsColor,
                        activeDotColor: AppColors.introductionPageActiveIndicatorDotsColor,
                        radius: 5
                      ), 
                    ) : 
                    SizedBox(
                      height: 52,
                      width: MediaQuery.of(context).size.width - 32,
                      child: GestureDetector(
                        onTap: () => cubit.introductionCompleted(),
                        child: Card(
                          color: AppColors.introductionPageEndButtonBgColor,
                          child: Center(
                            child: Text(
                              AppTexts.endIntroductionPageButtonText,
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.teal.shade100),  
                            ),
                          ),
                        ),
                      ),
                    )
                    // OutlinedButton(
                    //   onPressed: () => cubit.introductionCompleted(),
                    //    child: const Text(AppTexts.endIntroductionPageButtonText)
                    // ),
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}

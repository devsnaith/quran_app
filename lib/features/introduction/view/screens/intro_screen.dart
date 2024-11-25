import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/features/introduction/view/widgets/introduction_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<IntroductionPage> pages = [
  IntroductionPage(
    AppTexts.firstIntroductionPageTitle,
    AppTexts.firstIntroductionPageDescraption,
    Image.asset("assets/images/splash/ramadan-icon.png", width: 96),
  ),
  IntroductionPage(
    AppTexts.secondIntroductionPageTitle,
    AppTexts.secondIntroductionPageDescraption,
    Image.asset("assets/images/introduction/masjid-icon.png")
  ),
  IntroductionPage(
    AppTexts.thirdIntroductionPageTitle,
    AppTexts.thirdIntroductionPageDescraption,
    Image.asset("assets/images/introduction/noise-icon.png")
  ),
  IntroductionPage(
    AppTexts.lastIntroductionPageTitle,
    AppTexts.lastIntroductionPageDescraption,
    Image.asset("assets/images/introduction/chaplet-icon.png")
  )
];

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  void whenIntroductionComplete(BuildContext context) {
    Widget goToScreen = const Placeholder();
    MaterialPageRoute pageRoute = MaterialPageRoute(builder: (context) => goToScreen);
    Navigator.of(context).pushReplacement(pageRoute);
  }

  int currentIndex = 0;
  void onPageChanges(double netDragDistance, int pagesLength, int currentIndex, SlideDirection slideDirection) {
    this.currentIndex = currentIndex;
    setState(() {
    });
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
                  onPressed: () => whenIntroductionComplete(context),
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

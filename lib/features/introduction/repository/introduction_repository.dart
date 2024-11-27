import 'package:flutter/widgets.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/features/introduction/Model/introduction_model.dart';
import 'package:quran/features/introduction/view/widgets/introduction_page.dart';

class IntroductionRepository {
  final List<IntroductionModel> _introductionsPages = [
    IntroductionModel(
      introductionTitle: AppTexts.firstIntroductionPageTitle,
      introductionDescraption: AppTexts.firstIntroductionPageDescraption,
      introductionIconWidget: Image.asset("assets/images/splash/ramadan-icon.png", width: 96),
    ),
    IntroductionModel(
      introductionTitle: AppTexts.secondIntroductionPageTitle,
      introductionDescraption: AppTexts.secondIntroductionPageDescraption,
      introductionIconWidget: Image.asset("assets/images/introduction/masjid-icon.png")
    ),
    IntroductionModel(
      introductionTitle: AppTexts.thirdIntroductionPageTitle,
      introductionDescraption: AppTexts.thirdIntroductionPageDescraption,
      introductionIconWidget: Image.asset("assets/images/introduction/noise-icon.png")
    ),
    IntroductionModel(
      introductionTitle: AppTexts.lastIntroductionPageTitle,
      introductionDescraption: AppTexts.lastIntroductionPageDescraption,
      introductionIconWidget: Image.asset("assets/images/introduction/chaplet-icon.png")
    )
  ];
  List<IntroductionPage> getAllIntroductionModelsAsPages() => 
    _introductionsPages.map((model) => IntroductionPage(model)).toList();
}
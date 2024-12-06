import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/features/home/models/hadeth_model.dart';
import 'package:quran/features/home/view/widgets/hadethslider_widgets/hadeth_card.dart';
import 'package:url_launcher/url_launcher.dart';

class HadethRepository {
  final List<HadethModel> _hadethList = [
    HadethModel(
      hadeth: 'يقول النبي ﷺ: خيرُكُم مَن تعلَّمَ القرآنَ وعلَّمَهُ', 
      hadethURL: 'https://dorar.net/hadith/sharh/13180'
    ),
    HadethModel(
      hadeth: 'يقول النبي ﷺ: يقالُ لصاحِبِ القرآنِ اقرَأ وارقَ ورتِّل كما كُنتَ ترتِّلُ في الدُّنيا فإنَّ منزلتَكَ عندَ آخرِ آيةٍ تقرؤُها', 
      hadethURL: 'https://dorar.net/hadith/sharh/116139'
    ),
    HadethModel(
      hadeth: 'يقول النبي ﷺ: اقْرَؤُوا القُرْآنَ فإنَّه يَأْتي يَومَ القِيامَةِ شَفِيعًا لأَصْحابِهِ', 
      hadethURL: 'https://dorar.net/hadith/sharh/26869'
    ),
  ];

  List<Widget> getListAsCards() {
    List<Widget> widgets = [];
    int colorIndex = 0;
    for (var hadethItem in _hadethList) {
      widgets.add(Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () async {
            final Uri url = Uri.parse(hadethItem.hadethURL);
            if (!await launchUrl(
              url,
              mode: LaunchMode.externalApplication)) {
                throw Exception('Could not launch $url');
            }
          },
          child: HadethCard(
            sliderColor: AppColors.hadethCardColors[colorIndex],
            hadeth: hadethItem.hadeth,
          ),
        ))
      );
      colorIndex = colorIndex > AppColors.hadethCardColors.length ? 0 : colorIndex+1;
    }
    return widgets;
  }
}
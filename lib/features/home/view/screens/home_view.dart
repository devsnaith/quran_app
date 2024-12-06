import 'package:flutter/material.dart';
import 'package:quran/features/home/view/widgets/hadethslider_widgets/hadeth_slider.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return  SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight
          ),
          child: const IntrinsicHeight(
            child: Column(
              children: [
                Expanded(child: HadethSlider()),
                PrayerTimeSection()
              ],
            ),
          ),
        ),
      );
    });
  }
}

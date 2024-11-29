import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quran/features/view/widgets/hadeth_card.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: CarouselSlider(
        items: [
          Padding(
            padding: EdgeInsets.all(8),
            child: HadethCard(
                sliderColor: Colors.green.shade900,
                hadeth: "'يقول النبي ﷺ: 'خيركم من تعلم القرآن وعلمه"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: HadethCard(
                sliderColor: const Color.fromARGB(255, 4, 90, 81),
                hadeth:
                    "يقول النبي ﷺ: ( يقال لصاحب القرآن اقرأ وارتق ورتل كما كنت ترتل في الدنيا فإن منزلتك عند آخرآية تقرأ بها)"),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: HadethCard(
                sliderColor: Colors.teal,
                hadeth:
                    "يقول النبي ﷺ:(اقرؤوا القرآنَ فإنه يأتي يوم القيامة شفيعًا لأصحابه)"),
          ),
        ],
        options: CarouselOptions(
          height: 180.0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

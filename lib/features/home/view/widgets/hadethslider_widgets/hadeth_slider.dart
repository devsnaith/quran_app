import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quran/features/home/repositories/hadeth_repository.dart';

class HadethSlider extends StatelessWidget {
  const HadethSlider({
    super.key,
  });

  static HadethRepository repository = HadethRepository();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: repository.getListAsCards(),
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
    );
  }
}
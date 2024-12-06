import 'package:flutter/material.dart';
import 'package:quran/core/utils/fonts_style.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({
    super.key,
    required this.sliderColor,
    required this.hadeth,
  });

  final Color sliderColor;
  final String hadeth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
        color: sliderColor,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Text(
              hadeth,
              style: FontsStyle.whiteLateef(26),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ),
    );
  }
}

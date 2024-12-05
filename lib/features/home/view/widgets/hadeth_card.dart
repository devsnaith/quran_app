import 'package:flutter/material.dart';

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
      width: 280,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
        color: sliderColor,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            hadeth,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}

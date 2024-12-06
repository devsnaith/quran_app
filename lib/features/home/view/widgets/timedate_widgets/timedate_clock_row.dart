import 'package:flutter/material.dart';
import 'package:quran/core/utils/fonts_style.dart';

class PrayClock extends StatelessWidget {
  const PrayClock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("04:40", style: FontsStyle.w990Lato(38)),
          Text("Fajr 3 hours 9 min left", style: FontsStyle.w990Lato(16)),
        ],
      ),
    );
  }
}

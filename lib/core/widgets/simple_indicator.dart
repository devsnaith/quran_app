import 'package:flutter/material.dart';

class SimpleCirculIndicator extends StatelessWidget {
  const SimpleCirculIndicator(this.cardBgColor, {super.key});
  final Color cardBgColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: cardBgColor,
        child: const Center(
          child: CircularProgressIndicator()
        )
      )
    );
  }
  
}
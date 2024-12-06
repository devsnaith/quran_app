import 'package:flutter/material.dart';
import 'package:quran/core/constants/app_colors.dart';

class SebhaButton extends StatelessWidget {
  const SebhaButton({
    required this.onPressed,
    required this.icon,
    super.key,
  });
  
  final VoidCallback onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.sebhaButtonsBgColor, 
      child: IconButton(
        onPressed: () => onPressed.call(), 
        icon: icon
      )
    );
  }
}
import 'package:flutter/material.dart';

class IntroductionModel {
  const IntroductionModel({
    required this.introductionTitle,
    required this.introductionDescraption,
    required this.introductionIconWidget
  });
  final String introductionTitle;
  final String introductionDescraption;
  final Widget introductionIconWidget;
}
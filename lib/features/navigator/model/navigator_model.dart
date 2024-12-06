import 'package:flutter/material.dart';

class NavigatorModel {
  NavigatorModel({
    required this.index,
    required this.pages
  });
  
  int index;
  final List<Widget> pages;
}
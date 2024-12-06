import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';

class SurahView extends EasyImageProvider {
  SurahView(this.pages, this.initialIndex);
  final List<int> pages;

  @override
  final int initialIndex;

  @override
  ImageProvider<Object> imageBuilder(BuildContext context, int index) {
    String localImagePath = "assets/images/quran_pages/${pages[(pages.length - 1) - index]}.png";
    ImageProvider imageProvider = AssetImage(localImagePath) as ImageProvider;
    return imageProvider;
  }

  @override
  int get imageCount => pages.length;  
}
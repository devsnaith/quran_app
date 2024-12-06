import 'package:flutter/material.dart';
import 'package:quran/features/navigator/model/navigator_model.dart';
import 'package:quran/features/navigator/view-model/cubit/navigator_cubit.dart';

class NavigatorRepository {
  
  final NavigatorModel model;
  const NavigatorRepository(this.model);

   setCurrentIndex(int index, NavigatorCubit cubit) {
    cubit.navigate(model.index = index);
  }


  Widget getPageByIndex(int index) {
    if(model.pages.isEmpty || index > model.pages.length - 1 || index < 0) {
      return const Placeholder();
    }
    return model.pages[index];
  }

  NavigatorModel getNavigatorModel() {
    return model;
  }
}
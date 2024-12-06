import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_constant.dart';
import 'package:quran/core/constants/app_texts.dart';
import 'package:quran/features/navigator/repository/navigator_repository.dart';
import 'package:quran/features/navigator/view-model/cubit/navigator_cubit.dart';

class NavigatorBar extends StatefulWidget {
  const NavigatorBar({super.key});

  @override
  State<NavigatorBar> createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {
  
  late NavigatorCubit cubit;
  NavigatorRepository? repository;

  @override
  void initState() {
    super.initState();
    cubit = context.read<NavigatorCubit>();
    repository = cubit.getNavigatorRepository();
  }

  goToHome() => repository != null? repository?.setCurrentIndex(0, cubit) : false;
  goToSurah() => repository != null? repository?.setCurrentIndex(1, cubit) : false;
  goToJuzza() => repository != null? repository?.setCurrentIndex(2, cubit) : false;
  goToSebha() => repository != null? repository?.setCurrentIndex(3, cubit) : false;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: constraints.maxWidth,
            maxHeight: 64
          ),
          child: IntrinsicHeight(
            child: Container(
              color: AppColors.navigatorBarbgColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GNav(
                  hoverColor: AppColors.navigatorActiveBtnBgColor,
                  rippleColor: AppColors.navigatorBarbgColor,
                  gap: 8,
                  activeColor: AppColors.navigatorActiveBtnTextBgColor,
                  iconSize: 24,
                  // backgroundColor: ,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  duration: Duration(milliseconds: AppConstant.navigatorBarBtnSwitchDuration),
                  tabBackgroundColor: AppColors.navigatorActiveBtnBgColor,
                  color: AppColors.navigatorBtnTextBgColor,
                  curve: Curves.fastOutSlowIn,
                  tabs: [
                    GButton(
                      onPressed: goToHome,
                      icon: CupertinoIcons.home,
                      text: AppTexts.navigatorHomeButtonText,
                    ),
                    GButton(
                      onPressed: goToSurah,
                      icon: FlutterIslamicIcons.quran,
                      text: AppTexts.navigatorSurahButtonText,
                    ),
                    GButton(
                      onPressed: goToJuzza,
                      icon: FlutterIslamicIcons.quran2,
                      text: AppTexts.navigatorJuzzaButtonText,
                    ),
                    GButton(
                      onPressed: goToSebha,
                      icon: FlutterIslamicIcons.tasbih,
                      text: AppTexts.navigatorSebhaButtonText,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

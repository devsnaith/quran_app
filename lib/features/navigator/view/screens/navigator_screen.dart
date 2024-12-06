import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_constant.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/core/widgets/arabesque.dart';
import 'package:quran/features/navigator/repository/navigator_repository.dart';
import 'package:quran/features/navigator/view-model/cubit/navigator_cubit.dart';
import 'package:quran/features/navigator/view/widgets/navigator_bar.dart';

class AppNavigator extends StatelessWidget {
  const AppNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homePageBgColor,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: const Icon(FlutterIslamicIcons.mosque, color: Colors.white),
        title: Text("Welcome to the App ;)", style: FontsStyle.lato(16, Colors.white)),
      ),
      body: Stack(
        children: [
          const ArabesqueWidget(),
          BlocBuilder<NavigatorCubit, AppNavigatorState>(builder: (context, state) {            
            int pageIndex = state is NavigatorInitial ? AppConstant.navigatorBarDefaultIndex : (state as NavigatorPageChanged).navigatorModel.index;
            NavigatorRepository repo = context.read<NavigatorCubit>().getNavigatorRepository();
            return repo.getPageByIndex(pageIndex);
          })
        ],
      ),
      bottomNavigationBar: const NavigatorBar(),
    );
  }
}

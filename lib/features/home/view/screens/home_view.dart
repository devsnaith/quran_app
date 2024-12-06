import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/home/view-model/cubit/location_cubit.dart';
import 'package:quran/features/home/view/widgets/hadethslider_widgets/hadeth_slider.dart';
import 'package:quran/features/home/view/widgets/timedate_widgets/timedate_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                BlocBuilder<LocationCubit, LocationState>(builder: (context, state) {
                  if (state is LocationGrapped) {
                    return const SizedBox.shrink();
                  }
                  
                  String status = "";
                  if (state is LocationInitial) {
                    context.read<LocationCubit>().fetchLocation(false);
                    return const SizedBox.shrink();
                  }else if (state is LocationServiceDisabled) {
                    status = "Location Service Are disabled, Click here to Enable location service.";
                  }else if (state is LocationPermissionDenied) {
                    status = "Location Permission Denied for this App, Click here to try again.";
                  }
                  
                  return GestureDetector(
                    onTap: () => context.read<LocationCubit>().fetchLocation(true),
                    child: Card(
                      color: AppColors.locationErrorCardBgColor,
                      child: ListTile(
                        leading: Icon(Icons.error, color: AppColors.locationErrorCardIconColor),
                        title: Text(status, style: FontsStyle.lato(15, AppColors.locationErrorCardTextFgColor)),
                      ),
                    ),
                  );
                }),
                const Expanded(child: HadethSlider()),
                const PrayerTimeSection()
              ],
            ),
          ),
        ),
      );
    });
  }
}

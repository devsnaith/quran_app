import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/home/view-model/cubit/location_cubit.dart';
import 'package:quran/features/introduction/view-model/cubit/introduction_cubit.dart';
import 'package:quran/features/introduction/view/screens/introduction_screen.dart';
import 'package:quran/features/juz/view-model/cubit/juz_cubit.dart';
import 'package:quran/features/navigator/view-model/cubit/navigator_cubit.dart';
import 'package:quran/features/navigator/view/screens/navigator_screen.dart';
import 'package:quran/features/sebha/view-model/cubit/sebha_cubit.dart';
import 'package:quran/features/splash/view-model/cubit/splash_cubit.dart';
import 'package:quran/features/splash/view/screens/splash_screen.dart';
import 'package:quran/features/surah/view-model/cubit/surah_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<SplashCubit>(create: (context) => SplashCubit()),
          BlocProvider<IntroductionCubit>(create: (context) => IntroductionCubit()),
          BlocProvider<NavigatorCubit>(create: (context) => NavigatorCubit()),
          BlocProvider<LocationCubit>(create: (context) => LocationCubit()),
          BlocProvider<SebhaCubit>(create: (context) => SebhaCubit()),
          BlocProvider<SurahCubit>(create: (context) => SurahCubit()),
          BlocProvider<JuzCubit>(create: (context) => JuzCubit()),
        ],
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {

            /* Splash Screen */
            if(state is SplashInitialized) {
              return const SplashScreen();
            }

            /* Intro Screen */
            final introductionState = context.watch<IntroductionCubit>().state;
            if(introductionState is IntroductionInitialized) {
              return const IntroductionScreen();
            }
            
            /* Navigator */
            return const AppNavigator();
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/introduction/view-model/cubit/introduction_cubit.dart';
import 'package:quran/features/introduction/view/screens/introduction_screen.dart';
import 'package:quran/features/splash/view-model/cubit/splash_cubit.dart';

import 'features/home/view/screens/home_view.dart';
import 'features/splash/view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<SplashCubit>(create: (context) => SplashCubit()),
          BlocProvider<IntroductionCubit>(create: (context) => IntroductionCubit()),
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
            
            /* Home Screen */
            return const HomeView();
          },
        ),
      ),
    );
  }
}

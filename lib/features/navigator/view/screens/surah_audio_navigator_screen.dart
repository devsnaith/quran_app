import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quran/core/constants/app_colors.dart';
import 'package:quran/core/constants/app_constant.dart';
import 'package:quran/features/audio/view/screens/audio_screen.dart';
import 'package:quran/features/surah/view/screens/surah_screen.dart';
class SurahAudioNavigator extends StatefulWidget {
  const SurahAudioNavigator({super.key});

  @override
  State<SurahAudioNavigator> createState() => _SurahAudioNavigatorState();
}

class _SurahAudioNavigatorState extends State<SurahAudioNavigator> 
  with TickerProviderStateMixin {

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _tabController.index = AppConstant.surahAudioNavigatorBarDefaultIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.surahAudioNavigatorBgColors,
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(FlutterIslamicIcons.solidQuran2)),
              Tab(icon: Icon(FontAwesomeIcons.headphones)),
            ]
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              SurahScreen(),
              AudioScreen(),
            ]
          ),
        ),
      ],
    );
  }
}

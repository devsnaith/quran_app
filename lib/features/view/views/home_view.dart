import 'package:flutter/material.dart';
import 'package:quran/features/view/widgets/custom_nav_bar.dart';
import 'package:quran/features/view/widgets/custom_search_bar.dart';
import 'package:quran/features/view/widgets/home_slider.dart';
import 'package:quran/features/view/widgets/prayer_time_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEFAED),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const CustomSearchBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            HomeSlider(),
            PrayerTimeSection()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomNavBar(),
      ),
    );
  }
}

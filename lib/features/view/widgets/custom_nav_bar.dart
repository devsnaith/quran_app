import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      rippleColor: Colors.teal[300]!,
      hoverColor: Colors.grey[100]!,
      gap: 8,
      activeColor: Colors.black,
      iconSize: 24,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      duration: Duration(milliseconds: 400),
      tabBackgroundColor: Colors.teal,
      color: Colors.black,
      curve: Curves.fastOutSlowIn,
      tabs: [
        GButton(
          icon: CupertinoIcons.home,
          text: 'Home',
        ),
        GButton(
          icon: FlutterIslamicIcons.quran,
          text: 'Surah',
        ),
        GButton(
          icon: FlutterIslamicIcons.quran2,
          text: 'Juzza',
        ),
        GButton(
          icon: FlutterIslamicIcons.tasbih,
          text: 'Sebha',
        ),
      ],
    );
  }
}

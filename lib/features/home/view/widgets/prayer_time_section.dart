import 'package:flutter/material.dart';
import 'package:quran/features/home/view/widgets/data_show.dart';
import 'package:quran/features/home/view/widgets/pray_clock.dart';
import 'package:quran/features/home/view/widgets/pray_time_items.dart';

class PrayerTimeSection extends StatelessWidget {
  const PrayerTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Image.asset(
              'assets/images/islamic-banner-editing-png-images--background-png-images--thumbnail-1657298784.jpg'),
        ),
        Container(
          height: 392,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.teal.withOpacity(0.9),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 18),
                child: CustomDataShow(),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: PrayClock(),
              ),
              SizedBox(
                height: 70,
              ),
              PrayTimeItem()
            ],
          ),
        ),
      ],
    );
  }
}


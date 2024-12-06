import 'package:flutter/material.dart';
import 'package:quran/features/sebha/view/widgets/sebha_buttons_row.dart';
import 'package:quran/features/sebha/view/widgets/sebha_counter.dart';
import 'package:quran/features/sebha/view/widgets/sebha_info_card.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: constraints.maxHeight
          ),
          child: const IntrinsicHeight(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SebhaInfoCard(),
                  SebhaCounter(),
                  SebhaButtonsRow(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

}
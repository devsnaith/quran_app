import 'package:flutter/material.dart';
import 'package:quran/core/utils/fonts_style.dart';
import 'package:quran/features/introduction/Model/introduction_model.dart';

class IntroductionPage extends StatelessWidget {
  
  final IntroductionModel introductionModel;
  const IntroductionPage(this.introductionModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight
            ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: introductionModel.introductionIconWidget,
                ),

                Text(
                  style: FontsStyle.italicBoldNotoSans(24),
                  introductionModel.introductionTitle,
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    introductionModel.introductionDescraption,
                    textAlign: TextAlign.center,
                    style: FontsStyle.boldDmSerifText(16),
                  ),
                ),

              ],
            ),
          ),
        );
      }),
    );
  }
}
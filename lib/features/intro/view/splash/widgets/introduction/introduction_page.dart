import 'package:flutter/material.dart';
import 'package:quran/core/utils/fonts_style.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage(
    this.title,
    this.descraption,
    this.imageIcon,
    {super.key}
  );

  final String title;
  final String descraption;
  final Widget imageIcon;

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
                  child: imageIcon,
                ),

                Text(
                  style: FontsStyle.italicBoldNotoSans(24),
                  title,
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    descraption,
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
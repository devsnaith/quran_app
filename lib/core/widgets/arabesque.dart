import 'package:flutter/material.dart';

class ArabesqueWidget extends StatelessWidget {
  const ArabesqueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/splash/arabesque.png",
            repeat: ImageRepeat.repeat,
            width: double.infinity,
            height: double.infinity,
          );
  }
}
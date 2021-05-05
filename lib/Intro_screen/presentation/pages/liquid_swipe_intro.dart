import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:news_app/Intro_screen/presentation/pages/first_intro_page.dart';
import 'package:news_app/Intro_screen/presentation/pages/second_intro_page.dart';
import 'package:news_app/Intro_screen/presentation/pages/third_intro_page.dart';

class LiquidSwipeIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: [
        FirstIntroPage(),
        SecondIntroPage(),
        ThirdIntroPage(),
      ],
      enableLoop: false,
    );
  }
}

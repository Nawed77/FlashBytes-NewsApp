import 'package:flutter/material.dart';
import 'package:news_app/bottom_nav_bar/bottom_nav_bar.dart';

import 'package:news_app/config/colors/colors.dart';
import 'package:page_transition/page_transition.dart';

class ThirdIntroPage extends StatefulWidget {
  @override
  _ThirdIntroPageState createState() => _ThirdIntroPageState();
}

class _ThirdIntroPageState extends State<ThirdIntroPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Align(
              alignment: Alignment.center,
              child: Container(
                child: Image.asset(
                  'assets/images/third_intro.png',
                  height: 282,
                  width: 282,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Sports',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20, top: 8, bottom: 8),
            child: Text(
              'Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam,quis nostru exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 8.0, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: themeColor, width: 2),
                    )),
                SizedBox(width: 5),
                Container(
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: themeColor, width: 2),
                    )),
                SizedBox(width: 5),
                Container(
                    height: 12.0,
                    width: 12.0,
                    decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      alignment: Alignment.center,
                      duration: Duration(milliseconds: 1200),
                      child: BottomNavBarScreen(),
                      type: PageTransitionType.size));
            },
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  height: 45.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
          ),
        ],
      ),
    );
  }
}

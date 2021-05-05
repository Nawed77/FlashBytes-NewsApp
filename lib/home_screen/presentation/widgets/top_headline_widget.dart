import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:news_app/home_screen/presentation/pages/headline_details.dart';

class TopHeadlineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.0),
      height: MediaQuery.of(context).size.height * 0.62,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/virat.jpg',
          ),
        ),
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeadlineDetails()));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 8, left: 15),
                  padding: EdgeInsets.all(8),
                  child: Text(
                      'IPL 2021: Virat Kohli becomes\nfirst batsman to complete\n6,000 runs in  IPL',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              )),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  margin: EdgeInsets.only(top: 8, right: 15),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: LineIcon(Icons.favorite_outline)))
        ],
      ),
    );
  }
}

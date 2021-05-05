import 'package:flutter/material.dart';

class TrendingHashtagWidget extends StatefulWidget {
  @override
  _TrendingHashtagWidgetState createState() => _TrendingHashtagWidgetState();
}

class _TrendingHashtagWidgetState extends State<TrendingHashtagWidget> {
  List<String> trendingHashtag = [
    '#covid-19',
    '#ipl',
    '#viratkohli',
    '#msdhoni',
    '#ipl2021',
    '#cskvsdc',
    '#narendramodi',
    '#wwe'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 4.0, bottom: 4.0, top: 6.0),
      height: 35,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return Container(
              padding: EdgeInsets.only(right: 10.0, bottom: 4.0, top: 4.0),
              child: Text(trendingHashtag[position]));
        },
        itemCount: trendingHashtag.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:news_app/home_screen/presentation/model/headline_model.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<HeadlineModel> headlineList = [
    HeadlineModel(
        image: 'assets/images/vaccine.jpeg',
        news:
            'Covid-19 Assistance: Google offers Rs 135 crore grant for Covid-hit India: Sundar Pichai',
        time: 'Today'),
    HeadlineModel(
        image: 'assets/images/The_Prime_Minister,_Shri_Narendra_Modi.jpg',
        news:
            'PM Modi sanctions procurement of 1 lakh portable oxygen concentrators',
        time: 'Today'),
    HeadlineModel(
        image: 'assets/images/tech_news.jpeg',
        news:
            'CoWin server crashes as thousands of Indians rush to register for Covid-19 vaccination',
        time: 'Yesterday'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Favorite', style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 4, left: 8),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, position) {
            return Container(
              height: 80,
              margin: EdgeInsets.only(top: 4, bottom: 4, right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Image.asset(headlineList[position].image,
                          height: 80, width: 200)),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(headlineList[position].news,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold)),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(headlineList[position].time,
                              style: TextStyle(fontSize: 12)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: headlineList.length,
        ),
      ),
    );
  }
}

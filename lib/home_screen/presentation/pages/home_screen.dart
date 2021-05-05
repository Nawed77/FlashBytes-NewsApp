import 'package:flutter/material.dart';

import 'package:news_app/home_screen/presentation/widgets/category_widget.dart';

import 'package:news_app/home_screen/presentation/widgets/headline_widget.dart';
import 'package:news_app/home_screen/presentation/widgets/top_headline_widget.dart';
import 'package:news_app/home_screen/presentation/widgets/trending_hashtag_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('FlashBytes', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Trends',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              TrendingHashtagWidget(),
              CategoryWidget(),
              TopHeadlineWidget(),
              HeadlineWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

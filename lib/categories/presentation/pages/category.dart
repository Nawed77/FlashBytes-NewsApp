import 'package:flutter/material.dart';
import 'package:news_app/config/colors/colors.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  List<String> newsCategory = [
    'Sports',
    'Politics',
    'Covid-19',
    'Science ',
    'Info Tech',
    'LifeStyle',
    'Bussiness',
    'Entertainment',
    'Health',
    'Family',
    'Travel',
    'World',
    'Cars',
    'Regional news',
    'Weather',
    'Trafic & Roads',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text('News Category', style: TextStyle(color: Colors.black)),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: Container(
              padding: EdgeInsets.all(8.0),
              child: GridView.count(
                  crossAxisCount: 3,
                  physics: BouncingScrollPhysics(),
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 120 / 40,
                  shrinkWrap: true,
                  children: List.generate(newsCategory.length, (position) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = position;
                        });
                      },
                      child: Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              color: selectedIndex == position
                                  ? themeColor
                                  : Colors.blueGrey[50],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          padding: EdgeInsets.only(
                            bottom: 4.0,
                          ),
                          child: Center(
                            child: Text(newsCategory[position],
                                style: TextStyle(
                                  color: selectedIndex == position
                                      ? Colors.white
                                      : Colors.black,
                                )),
                          )),
                    );
                  }))),
        ));
  }
}

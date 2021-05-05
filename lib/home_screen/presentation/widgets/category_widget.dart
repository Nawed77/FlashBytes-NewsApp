import 'package:flutter/material.dart';
import 'package:news_app/config/colors/colors.dart';

class CategoryWidget extends StatefulWidget {
  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  int selectedIndex = 0;

  List<String> newsCategory = [
    'Sports',
    'Politics',
    'Covid-19',
    'Science ',
    'Info Tech',
    'LifeStyle'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 4.0, bottom: 4.0, top: 8.0),
      height: 40,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, position) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = position;
              });
            },
            child: Container(
                margin: EdgeInsets.only(
                  right: 10.0,
                ),
                height: 30.0,
                width: 80.0,
                decoration: BoxDecoration(
                    color:
                        selectedIndex == position ? themeColor : Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
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
        },
        itemCount: newsCategory.length,
      ),
    );
  }
}

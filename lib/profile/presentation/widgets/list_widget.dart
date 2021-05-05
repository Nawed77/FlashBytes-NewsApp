import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const ListWidget({this.title, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 5, right: 4, bottom: 5),
        margin: EdgeInsets.only(bottom: 4, top: 10, left: 15, right: 15),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon),
            SizedBox(width: 20),
            Text(title),
          ],
        ));
  }
}

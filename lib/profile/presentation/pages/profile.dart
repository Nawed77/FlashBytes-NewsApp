import 'package:flutter/material.dart';
import 'package:news_app/config/colors/colors.dart';
import 'package:news_app/profile/presentation/widgets/list_widget.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              height: 200,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(color: themeColor, width: 2),
                    ),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/female_avtar.png',
                          height: 70, width: 70),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Emma Watson'),
                ],
              ),
            ),
            ListWidget(icon: Icons.favorite, title: 'My Favorite'),
            ListWidget(icon: Icons.history, title: 'History'),
            ListWidget(icon: Icons.verified, title: 'Liked Post'),
            ListWidget(icon: Icons.do_not_disturb_off, title: 'Offline'),
            ListWidget(icon: Icons.settings, title: 'Settings'),
            ListWidget(icon: Icons.logout, title: 'Log Out'),
          ],
        )),
      ),
    );
  }
}

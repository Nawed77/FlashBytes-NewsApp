import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:news_app/categories/presentation/pages/category.dart';
import 'package:news_app/favorite_screen/presentation/pages/favorite.dart';
import 'package:news_app/home_screen/presentation/pages/home_screen.dart';
import 'package:news_app/profile/presentation/pages/profile.dart';

class BottomNavBarScreen extends StatefulWidget {
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;
  Widget callPage(int _selecredIndex) {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return Category();
      case 2:
        return Favorite();
      case 3:
        return Profile();

        break;
      default:
        return HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        elevation: 0.0,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            icon: LineIcon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: LineIcon(Icons.article),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      body: callPage(_selectedIndex),
    );
  }

  void _onTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }
}

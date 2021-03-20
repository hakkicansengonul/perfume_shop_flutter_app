import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:perfume_shop_flutter_app/screens/details_screen.dart';
import 'package:perfume_shop_flutter_app/screens/home_screen.dart';
import 'package:perfume_shop_flutter_app/screens/profile_screen.dart';

class HomeHome extends StatefulWidget {
  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.green,
        index: 0,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            newindex = index;
          });
        },
      ),
      body: newindex == 0
          ? HomePage()
          : newindex == 3
              ? ProfilePage()
              : null,
    );
  }
}

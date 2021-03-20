import 'package:flutter/material.dart';
import 'package:perfume_shop_flutter_app/screens/details_screen.dart';
import 'package:perfume_shop_flutter_app/screens/home_screen.dart';
import 'package:perfume_shop_flutter_app/screens/homehome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeHome(),
    );
  }
}

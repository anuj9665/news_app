import 'package:flutter/material.dart';
import 'package:news_app/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff043927),
        accentColor: Color(0xffDA5135),
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:port/screens/homepage.dart';
// import 'package:port/screens/landingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: HomePage(),
    );
  }
}

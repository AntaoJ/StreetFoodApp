import 'package:flutter/material.dart';
import 'package:street_food_flutter_app/modules/constants.dart';
import 'package:street_food_flutter_app/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StreetFood App',
      theme: ThemeData(
        primarySwatch: orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

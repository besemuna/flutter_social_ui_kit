import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/screens/ProfileScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social Free Icon Ui',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProfileScreen());
  }
}


import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/screens/LoginScreenFive.dart';
import 'package:social_free_ui_kit/screens/LoginScreenFour.dart';
import 'package:social_free_ui_kit/screens/LoginScreenOne.dart';
import 'package:social_free_ui_kit/screens/LoginScreenSix.dart';
import 'package:social_free_ui_kit/screens/LoginScreenThree.dart';
import 'package:social_free_ui_kit/screens/LoginScreenTwo.dart';
import 'package:social_free_ui_kit/screens/MainScreen.dart';

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
      home: LoginScreenOne()
    );
  }
}

class LoginScreenScreenSix {
}


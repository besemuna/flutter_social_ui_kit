import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/BottomNavigationBar.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';
import 'package:social_free_ui_kit/widgets/Header.dart';
import 'package:social_free_ui_kit/widgets/ProfileBuilder.dart';
import 'package:social_free_ui_kit/widgets/RecommendationsBuilder.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Header(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                child: Text(
                  "Recommendations",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4C4C4C)),
                ),
              ),
              RecommendationsBuilder(),
              SizedBox(
                height: 20,
              ),
              ProfileBuilder(
                name: "Georgia Bates",
                place: "Toronto, Ontario",
                time: "30s ago",
                profile: "assets/images/georgia_bates.png",
                pictures: [
                  "assets/images/g_one.png",
                  "assets/images/g_two.png",
                  "assets/images/g_three.png"
                ],
              ),
              ProfileBuilder(
                name: "Johny Vino",
                place: "Mississauga, Ontario",
                time: "5mins ago",
                profile: "assets/images/johny_vino.png",
                pictures: [
                  "assets/images/j_one.png",
                  "assets/images/j_two.png",
                  "assets/images/j_three.png"
                ],
              ),
              ProfileBuilder(
                name: "Scott Horsfall",
                place: "Markham, Ontario",
                time: "10mins ago",
                profile: "assets/images/scott.png",
                pictures: [
                  "assets/images/s_one.png",
                  "assets/images/s_two.png",
                  "assets/images/s_three.png"
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarr(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 3, color: Colors.white),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.26), blurRadius: 6)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff2676E1),
                Color(0xff00B5AA),
              ]),
        ),
        child: Icon(
          IconSet.camera,
          color: Colors.white,
        ),
      ),
    );
  }
}

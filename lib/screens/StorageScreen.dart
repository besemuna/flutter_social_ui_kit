import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/BottomNavigationBar.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';
import 'package:social_free_ui_kit/widgets/Header.dart';
import 'package:social_free_ui_kit/widgets/ProfileBuilder.dart';
import 'package:social_free_ui_kit/widgets/RecommendationsBuilder.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              Container(
                height: MediaQuery.of(context).size.height ,
                color: Colors.red,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                      ),
                    ),
                    
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.7 - 50,
                      right: 0,
                      left: 0,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Jenna Ferandandez",
                              style: TextStyle(
                                  color: Color(0xff484D54),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: <Widget>[
                                Text("Creative Designer"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "@ArgoRadius",
                                  style: TextStyle(
                                    color: Color(0xff2676E1),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            RichText(
                              text: TextSpan(
                                  text:
                                      "Obsessed with Fahim MD's YouTube channel, love to go shopping on weekends and loveee food ",
                                  style: TextStyle(
                                    color: Color(0xff484D54),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "#foodie",
                                      style: TextStyle(
                                        color: Color(0xff2676E1),
                                      ),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              height: 100,
                              color: Colors.yellow,
                            ),
                            Container(
                              height: 100,
                              color: Colors.yellow,
                            ),
                            Container(
                              height: 1000,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
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

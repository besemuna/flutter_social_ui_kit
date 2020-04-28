import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/Models/ProfileImage.dart';
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
          child: ListView(
        children: <Widget>[
          Header(),
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            color: Colors.yellow,
            child: Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/profile.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "135",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "posts",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9A9EA4)),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "5,321k",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "followers",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9A9EA4)),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "99",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "following",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff9A9EA4)),
                            )
                          ],
                        ),
                        InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 18, vertical: 8),
                            decoration: BoxDecoration(
                                color: Color(0xff2676E1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "Friend Request",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
             transform: Matrix4.translationValues(0.0, -40.0, 0.0),
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
                  height: 350,
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 7,
                        mainAxisSpacing: 7),
                    itemBuilder: (BuildContext context, int index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(profileImages[index].path),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
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

import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';

class LoginScreenFive extends StatefulWidget {
  @override
  _LoginScreenFiveState createState() => _LoginScreenFiveState();
}

class _LoginScreenFiveState extends State<LoginScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25),
                child: Icon(IconSet.back_button),
              ),
              SizedBox(height: 188),
              Text(
                "Turn on notification",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                width: 258,
                child: Text(
                    "Get the most out of Company by staying up to date with what's happening."),
              ),
              SizedBox(
                height: 23,
              ),
              ButtonSolid(
                text: Text(
                  "Allow Notification",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                background: Color(0xff2676E1),
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Skip for now",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff2676E1),
                  fontWeight: FontWeight.w500
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

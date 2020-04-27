import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';

class LoginScreenFour extends StatefulWidget {
  @override
  _LoginScreenFourState createState() => _LoginScreenFourState();
}

class _LoginScreenFourState extends State<LoginScreenFour> {
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
                "Create a password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                width: 258,
                child: Text(
                    "Your password must include at least one symbol and be 8 or more characters long."),
              ),
              SizedBox(
                height: 23,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Password",
                  labelStyle: TextStyle(fontSize: 13),
                  suffixIcon: Icon(
                    IconSet.eye,
                    color: Color(0xff434B56),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Re-Type Password",
                  labelStyle: TextStyle(fontSize: 13),
                  suffixIcon: Icon(
                    IconSet.eye,
                    color: Color(0xff434B56),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

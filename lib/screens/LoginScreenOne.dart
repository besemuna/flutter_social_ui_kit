import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';

class LoginScreenOne extends StatefulWidget {
  @override
  _LoginScreenOneState createState() => _LoginScreenOneState();
}

class _LoginScreenOneState extends State<LoginScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0XFF2676E1),
                Color(0XFF00B5AA),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15),
                alignment: Alignment.centerRight,
                child: Text(
                  "Have an account already? Log in",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 118),
              Icon(IconSet.logo_1, color: Colors.white, size: 78),
              SizedBox(height: 40),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "Welcome to",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Text(
                    "Company.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 56,
              ),
              ButtonWithIcon(
                icon: Icon(
                  IconSet.facebook_icon,
                  color: Color(0XFF2676E1),
                ),
                text: Text(
                  "Continue with Facebook",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0XFF2676E1),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ButtonWithBorder(
                text: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Text("By tapping Continue, Create account, I agree to Company's Terms of Service, Payments Terms of Service, Privacy Policy,and Non-discrimination Policy.", style: TextStyle(
                color: Colors.white,
                fontSize: 12
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

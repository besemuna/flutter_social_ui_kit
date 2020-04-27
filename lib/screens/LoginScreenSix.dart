import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';

class LoginScreenSix extends StatefulWidget {
  @override
  _LoginScreenScreenSixState createState() => _LoginScreenScreenSixState();
}

class _LoginScreenScreenSixState extends State<LoginScreenSix> {
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
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Email",
                  labelStyle: TextStyle(fontSize: 13),
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
                  hintText: "Password",
                  labelStyle: TextStyle(fontSize: 13),
                  suffixIcon: Icon(
                    IconSet.eye,
                    color: Color(0xff434B56),
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "Forgot password?",
                style: TextStyle(
                    color: Color(0xff2676E1),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 107,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Dont have an account?"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xff2676E1),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

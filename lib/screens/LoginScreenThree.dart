import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';
import 'package:social_free_ui_kit/widgets/Buttons.dart';

class LoginScreenThree extends StatefulWidget {
  @override
  _LoginScreenThreeState createState() => _LoginScreenThreeState();
}

class _LoginScreenThreeState extends State<LoginScreenThree> {
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
                "What's your email?",
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
                  hintText: "yourname@company.com",
                  labelStyle: TextStyle(fontSize: 13),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

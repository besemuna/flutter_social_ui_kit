import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 14, right: 14, bottom: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(0.07),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            IconSet.message,
            color: Color(0xff434B56),
            size: 33,
          ),
          Text(
            "logo",
            style: TextStyle(
                color: Color(0xff434B56),
                fontSize: 26,
                fontWeight: FontWeight.w900),
          ),
          Image(
            image: AssetImage("assets/images/top.png"),
          )
        ],
      ),
    );
  }
}

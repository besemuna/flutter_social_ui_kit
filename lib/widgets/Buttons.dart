import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';

class ButtonWithIcon extends StatelessWidget {
  final icon;
  final text;

  ButtonWithIcon({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 13),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          children: <Widget>[
            icon,
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: text,
            )
          ],
        ),
      ),
    );
  }
}

class ButtonWithBorder extends StatelessWidget {
  final text;

  ButtonWithBorder({this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 1, color: Colors.white)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            text
          ],
        ),
      ),
    );
  }
}

class ButtonSolid extends StatelessWidget {
  final text;
  final background;

  ButtonSolid({this.text, this.background});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 34, vertical: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 1, color: Colors.white),
          color: background
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            text
          ],
        ),
      ),
    );
  }
}

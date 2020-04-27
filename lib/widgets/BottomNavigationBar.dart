import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';

class BottomNavigationBarr extends StatefulWidget {
  @override
  _BottomNavigationBarrState createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(IconSet.bottom_one),
          title: Text(
            "HOME",
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconSet.bottom_two),
          title: Text(
            "STORIES",
            style: TextStyle(fontSize: 13),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconSet.bottom_three),
          title: Text(
            "NOTIFICATIONS",
            style: TextStyle(fontSize: 13),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(IconSet.search),
          title: Text(
            "SEARCH",
            style: TextStyle(fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

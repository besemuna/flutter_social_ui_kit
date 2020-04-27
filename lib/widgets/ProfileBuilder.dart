import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/presentation/icon_set_icons.dart';

class ProfileBuilder extends StatelessWidget {
  final name;
  final place;
  final time;
  final profile;
  final pictures;

  ProfileBuilder(
      {this.name, this.place, this.time, this.pictures, this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage(profile),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              color: Color(0xff484D54),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              place,
                              style: TextStyle(
                                  color: Color(0xff484D54), fontSize: 14),
                            ),
                            SizedBox(width: 5),
                            Text(
                              time,
                              style: TextStyle(
                                  color: Color(0xff484D54), fontSize: 14),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Icon(
                  IconSet.three_dots,
                  color: Color(0xff757575),
                )
              ],
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Container(
            padding: EdgeInsets.only(left: 14),
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pictures.length,
              itemBuilder: (BuildContext context, int index) => Container(
                margin: EdgeInsets.only(right: 10),
                width: 140,
                child: Image(
                  image: AssetImage("${pictures[index]}"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

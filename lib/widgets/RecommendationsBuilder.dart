import 'package:flutter/material.dart';
import 'package:social_free_ui_kit/Models/RecommendationModel.dart';

class RecommendationsBuilder extends StatelessWidget {
  Widget _buildItem(index) {
    var item = recommendations[index];

    return Container(
      width: 79,
      margin: EdgeInsets.only(right: 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffA3FEC7), Color(0xff6AC6FC)]),
            ),
            child: Image(
              image: AssetImage("assets/images/recommendations_one.png"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "${item.name}",
            style: TextStyle(color: Color(0xff787C81), fontSize: 13),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.white, boxShadow: [
      //   BoxShadow(
      //     offset: Offset(0, 20),
      //     blurRadius: 16,
      //     color: Colors.black,
      //   ),
      // ]),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendations.length,
        itemBuilder: (BuildContext context, int index) => _buildItem(index),
      ),
    );
  }
}

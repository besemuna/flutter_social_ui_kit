class Recommendation {
  var picture;
  var name;

  Recommendation({this.picture, this.name});
}

List<Recommendation> recommendations = [
  Recommendation(
      name: "James Mclean", picture: "assets/images/recommendations_one.png"),
  Recommendation(
      name: "Bessie Simantha", picture: "assets/images/recommendations_two.png"),
  Recommendation(
      name: "Jeffery Hall", picture: "assets/images/recommendations_three.png"),
  Recommendation(
      name: "Judy Adler", picture: "assets/images/recommendations_four.png")
];

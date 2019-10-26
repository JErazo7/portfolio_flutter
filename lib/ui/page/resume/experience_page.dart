import 'package:flutter/material.dart';
import 'package:flutter_profile/animation/reveal/domino_reveal.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        experience(),
        Container(
            height: MediaQuery.of(context).size.height - 130,
            child: ListView(
              children: <Widget>[
                Carde(
                  head: "Flutter Internship",
                  exp: "6 months +",
                  body: "Developing a baseball simulation game using flutter framework for a us based client under this internship",
                ),
                Carde(gif: "sleep", head: "Android Training", exp: "2 months",body: "Created an employ attendance application which marks an attendance using Geofencing.",),
                Carde(gif: "cute", head: "Java Training", exp: "2 months",body:"Oracle certified core java course")
              ],
            ))
      ],
    );
  }

  Widget experience() {
    return Container(
        child: Text("EXPERIENCE",
            style: TextStyle(
              fontFamily: 'BalooBhai',
              fontSize: 50,
            )));
  }
}

class Carde extends StatelessWidget {
  final String head;
  final String exp;
  final String body;
  final String gif;
  Carde(
      {this.head = 'Birth of Universe',
      this.body = "Text which goes inside the body appears over here.",
      this.gif = "planets",
      this.exp = "2 M"});
  @override
  Widget build(BuildContext context) {
    return DominoReveal(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ExpansionTile(
          gif: gif,
          title: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  head,
                  style: TextStyle(
                    fontFamily: 'BalooBhai',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  exp,
                  style: TextStyle(
                      fontFamily: 'BalooBhai', fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              child: Text(body,
                  style: TextStyle(
                      fontFamily: 'BalooBhai',
                      fontSize: 20,
                      color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5, 1.0],
                colors: [Colors.black, Colors.blueGrey, Colors.black])),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WE ARE CREATIVE DEVELOPERS",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 26.0, right: 20.0, top: 10.0),
              child: Text(
                "We develpop innovative projects using latest technology and work on some exciting projects which help us grow and learn new things.",
                style: TextStyle(
                  fontSize: 15.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0),
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {},
                child: Text("Learn More , Worry Less"),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}

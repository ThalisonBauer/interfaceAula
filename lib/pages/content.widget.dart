import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
  Content();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(21, 122, 169, 10),
          margin: EdgeInsets.only(top: 15),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "Comunicação para o Planejamento Profissional",
                      ),
                    ),
                    padding: EdgeInsets.only(top: 15),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Ola viado",
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  CircularPercentIndicator(
                    radius: 45.0,
                    lineWidth: 4.0,
                    percent: 0.10,
                    center: Text("10%"),
                    progressColor: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 80,
          color: Colors.white,
          margin: EdgeInsets.only(top: 140),
        ),
        Container(
          height: 50,
          color: Colors.white,
          margin: EdgeInsets.only(top: 219),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: Text(
            "112041",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

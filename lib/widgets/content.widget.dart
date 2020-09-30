import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:badges/badges.dart';

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();

  Content();
}

class _ContentState extends State<Content> {
  sampleFunction() {
    print('Function Called');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color.fromRGBO(21, 122, 169, 10),
          margin: EdgeInsets.only(top: 30),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    child: SizedBox(
                      width: 260,
                      child: Text(
                        "Comunicação para o Planejamento Profissional",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 35, bottom: 10, left: 20),
                  ),
                  Padding(
                    child: SizedBox(
                      width: 260,
                      child: Text(
                        "Turma: 77096 - Graduação",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.only(bottom: 10, left: 20),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  new CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 4.0,
                    percent: 0.90,
                    center: new Text(
                      "90%",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    progressColor: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.white,
          margin: EdgeInsets.only(top: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(214, 214, 214, 10),
                      size: 35,
                    ),
                    margin:
                        EdgeInsets.only(top: 5, left: 20, right: 10, bottom: 5),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Badge(
                      badgeContent: Text('3'),
                      child: Icon(
                        Icons.chat,
                        color: Color.fromRGBO(115, 115, 115, 10),
                        size: 35,
                      ),
                    ),
                    margin:
                        EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.info,
                      color: Color.fromRGBO(214, 214, 214, 10),
                      size: 35,
                    ),
                    margin:
                        EdgeInsets.only(top: 5, left: 10, right: 20, bottom: 5),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
          height: 70,
          width: double.infinity,
          color: Colors.white,
          margin: EdgeInsets.only(top: 190),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  child: Text("Entrar na sala"),
                  onPressed: sampleFunction,
                  color: Color.fromRGBO(20, 134, 46, 10), //20,134,46
                  textColor: Colors.white,
                  padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                  splashColor: Colors.grey,
                ),
              ),
            ],
          ),
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
          margin: EdgeInsets.only(
            top: 10,
          ),
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: Text(
            "112041",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

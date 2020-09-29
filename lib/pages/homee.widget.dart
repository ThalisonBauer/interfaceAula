import 'package:flutter/material.dart';

class Homee extends StatefulWidget {
  @override
  _HomeeState createState() => _HomeeState();
  Homee();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 13, bottom: 15),
            child: Row(
              children: <Widget>[
                Text(
                  "Salas Virtuais",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      ],
    );
  }
}

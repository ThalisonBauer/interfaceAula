import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  @override
  _DropState createState() => _DropState();
  Drop();
}

class _DropState extends State<Drop> {
  String dropdownValue = '2020';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, top: 0, bottom: 0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        isExpanded: true,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
          color: Colors.black,
        ),
        underline: Container(),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['2020', '2019', '2018', '2017']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

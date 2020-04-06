import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String dropdownValue = "one";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownButton(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newVal) {
          setState(() {
            dropdownValue = newVal;
          });
        },
        items: <String>['one', 'two', 'three', 'four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(child: Text(value), value: value);
        }).toList());
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterplayground/components/MyDropDownButton.dart';
import 'package:flutterplayground/components/SideDrawer.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = "/buttons";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "RaisedButton",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 30),
              RaisedButton(
                onPressed: () {},
                child: Text("Simple RaisedButton"),
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.cyan,
                child: Text("Cutom color RaisedButton"),
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Elevate & Highlight When Pressed"),
                highlightColor: Colors.cyan,
                highlightElevation: 10,
              ),
              RaisedButton(
                onPressed: () {},
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.cyanAccent])),
                  child: Text(
                    "Gradient button",
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(15.0),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "IconButton",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 30),
              Ink(
                decoration: ShapeDecoration(
                  color: Colors.cyan,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.phone_iphone),
                  onPressed: () {},
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {},
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Button with icon",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "FlatButton",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 30),
              FlatButton(
                child: Text(
                  "Flat button",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blueGrey,
                onPressed: () {},
              ),
              SizedBox(height: 30),
              Text(
                "DropdownButton",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 30),
              MyDropDownButton(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

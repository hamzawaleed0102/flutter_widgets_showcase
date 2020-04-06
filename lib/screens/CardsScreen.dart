import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';
class CardsScreen extends StatelessWidget{
  static const String routeName="/cards";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Cards"),),
      drawer: SideDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Cards Screen")
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
            ),
          ],
        ),
      ),
    );
  }
}

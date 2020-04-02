import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';
import 'package:flutterplayground/routes/Routes.dart';
import 'package:flutterplayground/screens/ButtonsScreen.dart';
import 'package:flutterplayground/screens/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        Routes.home: (context) => HomeScreen(),
        Routes.buttons: (context) => ButtonsScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Flutter Showcase'),
        ),
        body: HomeScreen());
  }
}

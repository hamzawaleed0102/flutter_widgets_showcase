import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';
import 'package:flutterplayground/routes/Routes.dart';
import 'package:flutterplayground/screens/ButtonsScreen.dart';
import 'package:flutterplayground/screens/FormsScreen.dart';
import 'package:flutterplayground/screens/ImagesScreen.dart';
import 'package:flutterplayground/screens/HomeScreen.dart';
import 'package:flutterplayground/screens/ViewArticle.dart';

void main() => runApp(Index());

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        Routes.home: (context) => HomeScreen(),
        Routes.buttons: (context) => ButtonsScreen(),
        Routes.cards: (context) => ImagesScreen(),
        Routes.viewArticle: (context) => ViewArticle(ModalRoute.of(context).settings.arguments),
        Routes.forms: (context) => FormsScreen(),

      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
}
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      body: HomeScreen(),
    );
  }
}

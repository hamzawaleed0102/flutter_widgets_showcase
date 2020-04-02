import 'package:flutter/material.dart';
import 'package:flutterplayground/components/SideDrawer.dart';
class ButtonsScreen extends StatelessWidget{
  static const String routeName="/buttons";
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(title: Text("Buttons"),),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Buttons Page',
          ),
        ],
      ),
    ),);
  }
}
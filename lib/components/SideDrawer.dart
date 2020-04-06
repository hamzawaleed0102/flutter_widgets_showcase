import 'package:flutter/material.dart';
import 'package:flutterplayground/routes/Routes.dart';
import 'package:flutterplayground/screens/ButtonsScreen.dart';
import 'package:flutterplayground/screens/HomeScreen.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.cyan),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "assets/images/flutter-sidedrawer-banner.png",
                  width: 120,
                ),
                Text("Widgets Showcase",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          _createDrawerItem(
              icon: Icons.home,
              text: "Home",
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, Routes.home);
              }),
          _createDrawerItem(
              icon: Icons.touch_app,
              text: "Buttons",
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, Routes.buttons);
              }),
          _createDrawerItem(
              icon: Icons.image,
              text: "Cards",
              onTap: () {
                print('asdf');
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, Routes.cards);
              }),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}

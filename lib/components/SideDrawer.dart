import 'package:flutter/material.dart';
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
                Image.asset("assets/images/flutter-sidedrawer-banner.png",width: 120,),
                Text("Widgets Showcase",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Icon(Icons.touch_app),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text("Buttons"),
                )
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

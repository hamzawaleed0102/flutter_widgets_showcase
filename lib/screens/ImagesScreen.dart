import 'package:flutter/material.dart';
import 'package:flutterplayground/components/LeftThumbnailCard.dart';
import 'package:flutterplayground/components/SideDrawer.dart';
import 'package:flutterplayground/routes/Routes.dart';
import 'package:flutterplayground/screens/ViewArticle.dart';

class ImagesScreen extends StatelessWidget {
  static const String routeName = "/cards";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
        backgroundColor: Colors.pink,
      ),
      drawer: SideDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return LeftThumbnailCard(
                      title: "Title" + index.toString(),
                      description:
                          "Description goes here. Lorem i \ndolor simit franci...",
                      image:
                          "https://pngimg.com/uploads/running_shoes/running_shoes_PNG5783.png",
                      onPress: () {
                        Navigator.pushNamed(context, Routes.viewArticle,
                            arguments: index.toString());
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

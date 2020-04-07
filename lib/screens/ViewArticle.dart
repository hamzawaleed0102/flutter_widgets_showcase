import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutterplayground/components/SideDrawer.dart';

class ViewArticle extends StatelessWidget {
  final String article;
  ViewArticle(this.article);
  static const String routeName = "/viewArticle";
  @override
  Widget build(BuildContext context) {
    print(article);
    return Scaffold(
      appBar: AppBar(
        title: Text("Title" + article.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "Title" + article.toString(),
              child: Image.network(
                'https://pngimg.com/uploads/running_shoes/running_shoes_PNG5783.png',
              ),
            ),
            Text(
              'View Article ------',
            ),
          ],
        ),
      ),
    );
  }
}

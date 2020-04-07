import 'package:flutter/material.dart';

class LeftThumbnailCard extends StatelessWidget {
  final String title,description,image;
  final Function onPress;
  LeftThumbnailCard({Key key, @required this.title,this.description,this.onPress,this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: this.onPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Hero(
                  tag: title,
                  child: Image.network(
                    image,
                    width: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    Text(
                      this.description,
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

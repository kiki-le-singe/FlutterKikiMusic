import 'package:flutter/material.dart';

class CardAlbumSlider extends StatelessWidget {
  CardAlbumSlider({@required this.child, @required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: Text(title, style: Theme.of(context).textTheme.headline)),
          child,
        ],
      ),
    );
  }
}

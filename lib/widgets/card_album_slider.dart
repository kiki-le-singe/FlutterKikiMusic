import 'package:flutter/material.dart';

class CardAlbumSlider extends StatelessWidget {
  CardAlbumSlider({ @required this.child, @required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Text(title, style: Theme.of(context).textTheme.body1),
          child,
        ],
      ),
    );
  }
}

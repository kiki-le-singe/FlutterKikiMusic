import 'package:flutter/material.dart';

class PlaylistDetailsScreen extends StatefulWidget {
  PlaylistDetailsScreen({this.title});

  final String title;

  @override
}

class _PlaylistDetailsScreenState extends State<PlaylistDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Container(
              color: Colors.lightBlue,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[Text("Coucou")],
              ))),
    );
  }
}

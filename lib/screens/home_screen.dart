import 'package:flutter/material.dart';
import 'package:flutter_kiki_music/widgets/card_album.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.title});

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map> cardAlbums = [
    {
      "coverName": "assets/images/8bit.jpg",
      "title": "8 Bit",
      "artists": ["Jaunter", "Kubbi"]
    },
    {
      "coverName": "assets/images/acoustique.jpg",
      "title": "Acoustique",
      "artists": ["Josh Woodward", "Madam Snowflake"]
    },
    {
      "coverName": "assets/images/house.jpg",
      "title": "House",
      "artists": ['Scandinavianz', 'Cybersdf']
    },
    {
      "coverName": "assets/images/piano.jpg",
      "title": "Piano",
      "artists": ['Darin Wilson', 'Jelsonic']
    },
    {
      "coverName": "assets/images/pop.jpg",
      "title": "Pop",
      "artists": ['Apsley', 'Jens East']
    }
  ];

  CardAlbum _itemBuilder(context, i) {
    Map cardAlbum = cardAlbums[i];
    return CardAlbum(
        coverName: cardAlbum["coverName"],
        title: cardAlbum["title"],
        artists: cardAlbum["artists"]);
  }

  @override
  Widget build(BuildContext context) {
    print(cardAlbums.length);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        child: Container(
          height: 150,
          child: ListView.builder(
            itemCount: cardAlbums.length,
            itemBuilder: _itemBuilder,
            scrollDirection: Axis.horizontal,
          ),
        )
      ),
    );
  }
}

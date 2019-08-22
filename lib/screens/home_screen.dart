import 'package:flutter/material.dart';
import 'package:flutter_kiki_music/widgets/card_album.dart';
import 'package:flutter_kiki_music/widgets/card_album_slider.dart';

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

  CardAlbum _recentListeningItemBuilder(context, i) {
    Map cardAlbum = cardAlbums[i];
    return CardAlbum(
        coverName: cardAlbum["coverName"],
        title: cardAlbum["title"],
        artists: cardAlbum["artists"]);
  }

  Widget _recentListeningSliderBuild() {
    return Container(
      height: 180,
      child: ListView.separated(
        itemCount: cardAlbums.length,
        itemBuilder: _recentListeningItemBuilder,
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CardAlbumSlider(
                      title: 'Écoutés récemment',
                      child: _recentListeningSliderBuild()),
                  CardAlbumSlider(
                      title: 'Vos favoris du moment',
                      child: _recentListeningSliderBuild()),
                  CardAlbumSlider(
                      title: 'Playlist', child: _recentListeningSliderBuild()),
                ],
              ))),
    );
  }
}

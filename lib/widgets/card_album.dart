import 'package:flutter/material.dart';

class CardAlbum extends StatelessWidget {
  CardAlbum ({@required this.coverName, @required this.title, this.artists = const []});

  final String coverName;
  final String title;
  final List<String> artists;

  dynamic _formatArtists(List artists) {
    if (artists.isNotEmpty) {
      return artists.join(', ');
    }
    return null;
  }

  Widget _buildCover() {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.transparent,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.lightBlue,
            offset: Offset(0, 4.0),
            blurRadius: 40.0,
            spreadRadius: -5,
          ),
        ],
      ),
        width: 150,
        height: 100,
        child: Image.asset(coverName, fit: BoxFit.cover,),

    );
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    List<Widget> children = [
      _buildCover(),
      Text(title, style: textTheme.body1),
    ];
    dynamic formattedArtists = _formatArtists(artists);

    if (formattedArtists != null) {
      children.add(Text(formattedArtists, style: textTheme.body2));
    }

    return Container(
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}

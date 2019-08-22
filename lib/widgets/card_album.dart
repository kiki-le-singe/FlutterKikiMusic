import 'package:flutter/material.dart';

class CardAlbum extends StatelessWidget {
  CardAlbum(
      {@required this.coverName,
      @required this.title,
      this.artists = const []});

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
      width: 125,
      height: 125,
      child: Image.asset(
        coverName,
        fit: BoxFit.cover,
      ),
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
      children.add(Text(
        formattedArtists,
        style: textTheme.body2,
        textAlign: TextAlign.center,
      ));
    }

    return Container(
      width: 125,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: children,
      ),
    );
  }
}

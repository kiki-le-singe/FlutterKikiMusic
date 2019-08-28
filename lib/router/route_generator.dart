// @ref:
// - https://resocoder.com/2019/04/27/flutter-routes-navigation-parameters-named-routes-ongenerateroute/
// - https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments
import 'package:flutter/material.dart';
import 'package:flutter_kiki_music/screens/home_screen.dart';
import 'package:flutter_kiki_music/screens/playlist_details_screen/playlist_details_screen.dart';
import 'package:flutter_kiki_music/screens/error_screen.dart';
import 'package:flutter_kiki_music/router/constants.dart';
import 'package:flutter_kiki_music/screens/playlist_details_screen/playlist_details_screen_arguments.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreenRouteName:
        return MaterialPageRoute(
            builder: (context) => HomeScreen(title: HomeScreenTitle));
      case PlaylistDetailsScreenRouteName:
        // Get args passed in Navigator.pushNamed
        // Cast the arguments to the correct type: PlaylistDetailsScreenArguments.
        final PlaylistDetailsScreenArguments args = settings.arguments;

        return MaterialPageRoute(
          builder: (context) => PlaylistDetailsScreen(title: args.title),
        );
      default:
        // If there is an error
        return MaterialPageRoute(
          builder: (context) => ErrorScreen(),
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_kiki_music/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        // @see:
        // - https://flutter.dev/docs/cookbook/design/themes
        // - https://api.flutter.dev/flutter/material/TextTheme-class.html
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white),
          body1: TextStyle(fontSize: 14.0, color: Colors.white),
          body2: TextStyle(fontSize: 12.0, color: Color(0x62FFFFFF)),
        ),
      ),
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

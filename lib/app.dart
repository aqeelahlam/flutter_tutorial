import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/locations/locations.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Locations(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(titleTextStyle: AppBarTextStyle),
            textTheme: const TextTheme(
              headline1: AppBarTextStyle,
              headline2: TitleTextStyle,
              bodyText1: Body1TextStyle,
            )));
  }
}

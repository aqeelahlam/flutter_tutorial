import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LocationDetail(),
        theme: ThemeData(
            textTheme: const TextTheme(
          headline1: AppBarTextStyle,
          headline2: TitleTextStyle,
          bodyText1: Body1TextStyle,
        )));
  }
}

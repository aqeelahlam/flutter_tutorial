import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/location_detail.dart';
import 'package:flutter_tutorial/screens/locations/locations.dart';
import 'style.dart';

// Home Screen
const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }
}

ThemeData _theme() {
  return ThemeData(
      appBarTheme: AppBarTheme(titleTextStyle: AppBarTextStyle),
      textTheme: const TextTheme(
        headline1: AppBarTextStyle,
        headline2: TitleTextStyle,
        bodyText1: Body1TextStyle,
      ));
}

RouteFactory _routes() {
  return (settings) {
    final Object? arguments = settings.arguments;

    Widget screen;
    switch (settings.name) {
      case LocationsRoute:
        screen = Locations();
        break;
      case LocationDetailRoute:
        screen = LocationDetail(int.parse(arguments.toString()));
        break;
      default:
        return null;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}

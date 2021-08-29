import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/text_section.dart';
import 'image_banner.dart';
import 'package:flutter_tutorial/models/location.dart';
import 'package:flutter_tutorial/style.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    final location = locations.first;

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
          titleTextStyle: AppBarTextStyle,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location)),
        ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screens/location_detail/text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Location Detail'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner('assets/images/kiyomizu-dera.jpg'),
            TextSection("Summary 1", "Hello 1"),
            TextSection("Summary 2", "Hello 2"),
            TextSection("Summary 3", "Hello 3"),
          ],
        ));
  }
}

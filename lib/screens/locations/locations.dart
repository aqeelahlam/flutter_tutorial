import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/location.dart';
import 'package:flutter_tutorial/app.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: Text(
                    location.name,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: locationID);
  }
}

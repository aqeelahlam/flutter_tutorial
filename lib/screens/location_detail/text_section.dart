import 'package:flutter/material.dart';
import 'package:flutter_tutorial/style.dart';

class TextSection extends StatelessWidget {
  // Final means: Once you set it, you cant change it.
  final String _title;
  final String _body;
  static const double _hPad = 16.0;

  // this._color = color is equivalent to:
  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32, _hPad, 4.0),
            child: Text(
              _title,
              style: Theme.of(context).textTheme.headline2,
            )),
        Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 10, _hPad, _hPad),
            child: Text(
              _body,
              style: Theme.of(context).textTheme.bodyText1,
            )),
      ],
    );
  }
}

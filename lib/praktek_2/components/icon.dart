import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          Icons.star_border,
          color: Colors.black,
          size: 15.0,
        )
      ],
    );
  }
}


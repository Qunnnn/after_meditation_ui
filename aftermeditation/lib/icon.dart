import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  final dynamic icon;
  final dynamic label;
  final dynamic colour;
  final dynamic colourTexticon;

  iconContent({this.icon, this.label, this.colour, this.colourTexticon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: colour,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: TextStyle(
            color: colourTexticon,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}

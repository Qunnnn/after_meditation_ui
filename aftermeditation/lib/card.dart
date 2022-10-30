import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final dynamic colour;
  final dynamic cardChild;
  final dynamic onFress;
  ReusableCard({required this.colour, this.cardChild, this.onFress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onFress,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: colour,
          ),
        ),
      ),
    );
  }
}

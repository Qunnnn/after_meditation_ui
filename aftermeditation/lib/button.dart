import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final dynamic colorbutton;
  final dynamic label;
  final dynamic colorlabel;
  Button({this.colorbutton, this.label, this.colorlabel});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: colorbutton,
          fixedSize: const Size(350, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          )),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20.0,
          color: colorlabel,
        ),
      ),
      onPressed: () {
        null;
      },
    );
  }
}

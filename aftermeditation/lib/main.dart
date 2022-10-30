import 'package:flutter/material.dart';
import 'icons_Page.dart';

void main() {
  runApp(const Aftermeditation());
}

class Aftermeditation extends StatelessWidget {
  const Aftermeditation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFFAFB4FF),
      ),
      home: IconsPage(),
    );
  }
}

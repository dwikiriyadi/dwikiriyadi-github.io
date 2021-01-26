import 'package:dwikiriyadi/pages/root.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dwiki Riyadi | Mobile Developer',
      theme: ThemeData(
        accentColor: Color(0xffC12323)
      ),
      home: Root(),
    );
  }
}

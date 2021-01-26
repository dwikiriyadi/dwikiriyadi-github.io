import 'package:dwikiriyadi/widgets/text_header.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextHeader("Education", textColor: Color(0xff212121)),
        ]));
  }
}

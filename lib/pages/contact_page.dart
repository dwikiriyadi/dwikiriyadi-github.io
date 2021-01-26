import 'package:dwikiriyadi/widgets/text_header.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff323232),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextHeader("Get in touch"),
        ]));
  }
}

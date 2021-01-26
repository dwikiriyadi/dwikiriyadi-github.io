import 'package:dwikiriyadi/widgets/text_header.dart';
import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  _SkillPageState createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextHeader("Skill", textColor: Color(0xff212121)),
        ]));
  }
}

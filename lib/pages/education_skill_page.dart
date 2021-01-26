import 'package:dwikiriyadi/pages/education_page.dart';
import 'package:dwikiriyadi/pages/skill_page.dart';
import 'package:flutter/material.dart';

class EducationSkillPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xfff5f5f5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [EducationPage(), SkillPage()]));
  }
}

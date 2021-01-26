import 'package:dwikiriyadi/widgets/carousel.dart';
import 'package:dwikiriyadi/widgets/item_education.dart';
import 'package:dwikiriyadi/widgets/text_header.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatefulWidget {
  _EducationPageState createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  var educations = [
    {
      'level': "Bachelor's degree",
      'place': "STMIK AKAKOM Yogyakarta",
      'department': "Informatics Engineering",
      'generation': "September 2018 - April 2020"
    },
    {
      'level': "Associate's degree",
      'place': "Politeknik Negeri Pontianak",
      'department': "Informatics Engineering",
      'generation': "July 2014 - June 2017"
    },
    {
      'level': "Vocational High School",
      'place': "SMKN 4 Pontianak",
      'department': "Mechanical Engineering",
      'generation': "July 2011 - June 2014"
    },
    {
      'level': "Junior High School",
      'place': "SMPN 16 Pontianak",
      'department': null,
      'generation': "July 2008 - June 2011"
    },
    {
      'level': "Elementary School",
      'place': "SDN 09 Pontianak",
      'department': null,
      'generation': "July 2002 - June 2008"
    },
    {
      'level': "Kindergarten",
      'place': "TK Islam Harapan Indah",
      'department': null,
      'generation': "July 2001 - June 2002"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextHeader("Education",
              textColor: Color(0xff212121),
              padding: EdgeInsets.symmetric(horizontal: 16)),
          Carousel(
            padding: EdgeInsets.only(top: 24),
            indicatorPadding: EdgeInsets.only(top: 8, right: 16),
            items: educations,
            builder: (item) {
              return ItemEducation(
                  padding: EdgeInsets.symmetric(horizontal: 16), data: item);
            },
          )
        ]));
  }
}

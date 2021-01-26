import 'package:dwikiriyadi/widgets/text_header.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatefulWidget {
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffeeeeee),
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextHeader("Portfolio",
              textColor: Color(0xff212121),
              padding: EdgeInsets.symmetric(horizontal: 16)),
        ]));
  }
}

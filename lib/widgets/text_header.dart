import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeader extends StatefulWidget {
  final String text;
  final Color textColor;
  final EdgeInsetsGeometry padding;

  const TextHeader(this.text,
      {Key key, this.textColor: Colors.white, this.padding})
      : super(key: key);

  _TextHeaderState createState() => _TextHeaderState();
}

class _TextHeaderState extends State<TextHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: widget.padding,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 2,
                      color: Theme.of(context).accentColor,
                      style: BorderStyle.solid))),
          child: Text(widget.text,
              style: GoogleFonts.openSans(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: widget.textColor)),
        ));
  }
}

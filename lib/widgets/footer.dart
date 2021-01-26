import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = MediaQuery.of(context);

    return Container(
        color: Color(0xff212121),
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 56,
        child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
                "Copyright© ${DateTime.now().year} Dwiki Riyadi. All Rights Reserved.",
                textScaleFactor: queryData.textScaleFactor,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Color.fromRGBO(255, 255, 255, 0.5)))));
  }
}

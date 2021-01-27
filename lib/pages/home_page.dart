import 'package:dwikiriyadi/common/extension.dart';
import 'package:dwikiriyadi/widgets/parallax.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  final double scrollPosition;

  const HomePage({Key key, this.scrollPosition}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xfffafafa),
        child: Column(children: [
          Parallax(
              width: double.infinity,
              height: 460,
              image: 'assets/mobile_image.png',
              scrollPosition: widget.scrollPosition,
              contentPadding: EdgeInsets.all(16),
              contents: [
                Text("Hi, I'm",
                    textScaleFactor: 1.0,
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold)),
                Text("Dwiki Riyadi",
                    textScaleFactor: 1.0,
                    style: GoogleFonts.openSans(
                        color: Theme.of(context).accentColor,
                        fontSize: 48,
                        fontWeight: FontWeight.bold))
              ],
              developerAccount: [
                IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    icon:
                        Icon(FontAwesomeIcons.linkedinIn, color: Colors.white),
                    onPressed: () {
                      launch(
                          "https://www.linkedin.com/in/dwiki-riyadi-a944b66b/");
                    }),
                IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    icon: Icon(FontAwesomeIcons.github, color: Colors.white),
                    onPressed: () {
                      launch("https://github.com/dwikiriyadi");
                    })
              ]),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              child: Text(
                  "I was born in Pontianak, West Borneo, Indonesia. "
                  "I'm ${"28-12-1996".age()} years old. My hobbies are reading comics, "
                  "watching movies, playing games and developing some apps.\n\n"
                  "Now I'm working as Mobile Developer at Telkom Indonesia",
                  textScaleFactor: 1.0,
                  style: GoogleFonts.roboto(
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      height: 1.5)))
        ]));
  }
}

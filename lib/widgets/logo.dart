import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;

  const Logo({Key key, this.width, this.height, this.padding})
      : super(key: key);

  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: widget.padding,
        child: Center(
            child: Image(
                image: AssetImage('assets/logo.png'),
                width: widget.width,
                height: widget.height)));
  }
}

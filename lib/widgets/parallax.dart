import 'package:dwikiriyadi/widgets/developer_short_top.dart';
import 'package:flutter/material.dart';

class Parallax extends StatefulWidget {
  final double height;
  final double width;
  final ImageProvider image;
  final double scrollPosition;
  final List<IconButton> developerAccount;
  final List<Widget> contents;
  final EdgeInsetsGeometry contentPadding;

  const Parallax(
      {Key key,
      this.height,
      this.width,
      this.image,
      this.scrollPosition,
      this.developerAccount,
      this.contents,
      this.contentPadding})
      : super(key: key);

  _ParallaxState createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  @override
  Widget build(BuildContext context) {
    var height = 460 - widget.scrollPosition;

    return Stack(children: [
      Container(
          width: widget.width,
          height: height,
          padding: widget.contentPadding,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: widget.image,
                  fit: BoxFit.cover,
                  alignment: Alignment.topLeft)),
          child: height > 200
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: widget.contents,
                )
              : Container()),
      DeveloperShortTop(
        actions: widget.developerAccount,
      )
    ]);
  }
}

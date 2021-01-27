import 'package:flutter/material.dart';

class ShowCaseImage extends StatefulWidget {
  final List<Widget> contents;
  final String image;
  final double aspectRatio;
  final EdgeInsetsGeometry contentPadding;

  const ShowCaseImage(
      {Key key,
      this.contents: const [],
      this.image,
      this.aspectRatio,
      this.contentPadding})
      : super(key: key);

  _ShowCaseImageState createState() => _ShowCaseImageState();
}

class _ShowCaseImageState extends State<ShowCaseImage> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: widget.aspectRatio,
        child: Stack(
          children: [
            Container(
                foregroundDecoration:
                    BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image(
                                image: widget.image.contains("https://")
                                    ? NetworkImage(widget.image)
                                    : AssetImage(widget.image))
                            .image,
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter))),
            Container(
                padding: widget.contentPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: widget.contents,
                ))
          ],
        ));
  }
}

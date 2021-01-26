import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final List<Map> items;
  final Widget Function(Map item) builder;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry indicatorPadding;

  const Carousel(
      {Key key, this.items, this.builder, this.padding, this.indicatorPadding})
      : super(key: key);

  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  double _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: widget.padding,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    return widget.builder(widget.items[index]);
                  },
                  options: CarouselOptions(
                      aspectRatio: 16 / 12,
                      viewportFraction: 1.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index.toDouble();
                        });
                      })),
              Padding(
                  padding: widget.indicatorPadding,
                  child: DotsIndicator(
                      dotsCount: widget.items.length,
                      position: _current,
                      decorator: DotsDecorator(
                          shape: Border(),
                          activeShape: Border(),
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          activeColor: Theme.of(context).accentColor)))
            ]));
  }
}

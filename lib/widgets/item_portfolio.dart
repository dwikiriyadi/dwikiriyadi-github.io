import 'package:dwikiriyadi/widgets/show_case_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPortfolio extends StatefulWidget {
  final Map item;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;
  final double imageAspectRatio;
  final GestureTapCallback onTap;

  const ItemPortfolio(
      {Key key,
      this.item,
      this.padding,
      this.width,
      this.height,
      this.imageAspectRatio: 16 / 9,
      this.onTap})
      : super(key: key);

  _ItemPortfolioState createState() => _ItemPortfolioState();
}

class _ItemPortfolioState extends State<ItemPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        padding: widget.padding,
        child: InkWell(
            onTap: widget.onTap,
            child: Card(
                elevation: 4.0,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: BeveledRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(16))),
                color: Colors.white,
                child: Column(children: [
                  ShowCaseImage(
                      aspectRatio: widget.imageAspectRatio,
                      image: widget.item['image'],
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
                  Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.item['name'],
                                textScaleFactor: 1.0,
                                style: GoogleFonts.openSans(
                                    color: Theme.of(context).accentColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text(widget.item['tech'],
                                textScaleFactor: 1.0,
                                style: GoogleFonts.roboto(
                                    color: Color(0xff212121),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12)),
                            Container(
                              padding: EdgeInsets.only(top: 24),
                              child: Text(widget.item['description'],
                                  textScaleFactor: 1.0,
                                  style: GoogleFonts.roboto(
                                      color: Color(0xff212121),
                                      height: 1.5,
                                      fontWeight: FontWeight.w300,
                                        fontSize: 14)),
                            )
                          ]))
                ]))));
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemEducation extends StatefulWidget {
  final Map data;
  final EdgeInsetsGeometry padding;

  const ItemEducation({Key key, this.data, this.padding}) : super(key: key);

  _ItemEducationState createState() => _ItemEducationState();
}

class _ItemEducationState extends State<ItemEducation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Card(
          elevation: 4.0,
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16))),
          color: Colors.white,
          child: Container(
              padding: EdgeInsets.only(bottom: 30, top: 16, left: 16, right: 16),
              child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(bottom: 24),
                  child: Text(widget.data['level'],
                      textScaleFactor: 1.0,
                      style: GoogleFonts.openSans(
                          color: Theme.of(context).accentColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ),
                Expanded(
                    child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.data['place'],
                                  textScaleFactor: 1.0,
                                  style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                              widget.data['department'] == null
                                  ? Container()
                                  : Text(widget.data['department'],
                                  textScaleFactor: 1.0,
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300))
                            ]))),
                Container(
                    child: Text(widget.data['generation'],
                        textScaleFactor: 1.0,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300)))
              ])))
    );
  }
}

import 'package:flutter/material.dart';

class AppBarShortTop extends StatefulWidget {
  final List<IconButton> actions;
  final Color backgroundColor;

  AppBarShortTop({Key key, this.actions, this.backgroundColor})
      : assert(actions != null),
        assert(actions.isNotEmpty),
        super(key: key);

  _AppBarShortTopState createState() => _AppBarShortTopState();
}

class _AppBarShortTopState extends State<AppBarShortTop> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
            child: Container(
                width: 56.0 * widget.actions.length,
                height: 56.0,
                child: Material(
                    color: widget.backgroundColor,
                    shape: BeveledRectangleBorder(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(16)),
                    ),
                    child: ListView.builder(
                        itemCount: widget.actions.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: widget.actions[index]
                          );
                        })))));
  }
}

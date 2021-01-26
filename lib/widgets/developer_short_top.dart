import 'package:flutter/material.dart';

class DeveloperShortTop extends StatefulWidget {
  final List<IconButton> actions;

  DeveloperShortTop({Key key, this.actions})
      : assert(actions != null),
        assert(actions.isNotEmpty),
        super(key: key);

  DeveloperShortTopState createState() => DeveloperShortTopState();
}

class DeveloperShortTopState extends State<DeveloperShortTop> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: SafeArea(
            child: Container(
                width: 56.0 * widget.actions.length,
                height: 56.0,
                child: ListView.builder(
                    itemCount: widget.actions.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return widget.actions[index];
                    }))));
  }
}

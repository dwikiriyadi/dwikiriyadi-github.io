import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  final List<Widget> menus;

  const NavigationDrawer({Key key, this.menus}) : super(key: key);

  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: widget.menus));
  }
}

import 'package:dwikiriyadi/pages/contact_page.dart';
import 'package:dwikiriyadi/pages/education_skill_page.dart';
import 'package:dwikiriyadi/pages/home_page.dart';
import 'package:dwikiriyadi/pages/portfolio_page.dart';
import 'package:dwikiriyadi/widgets/app_bar_short_top.dart';
import 'package:dwikiriyadi/widgets/footer.dart';
import 'package:dwikiriyadi/widgets/logo.dart';
import 'package:dwikiriyadi/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  Root({Key key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  ScrollController _scrollController;
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
      // debugPrint(_scrollPosition.toString());
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: NavigationDrawer(menus: []),
        body: Stack(children: [
          ListView(controller: _scrollController, children: [
            HomePage(scrollPosition: _scrollPosition),
            EducationSkillPage(),
            PortfolioPage(),
            ContactPage(),
            Footer()
          ]),
          AppBarShortTop(backgroundColor: Colors.white, actions: [
            IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                }),
            IconButton(icon: Logo(width: 24, height: 24), onPressed: null)
          ])
        ]));
  }
}

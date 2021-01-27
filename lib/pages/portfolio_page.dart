import 'package:dwikiriyadi/widgets/item_portfolio.dart';
import 'package:dwikiriyadi/widgets/text_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatefulWidget {
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  var portfolios = [
    {
      "name": "Logee Order Material",
      "tech": "Android - Kotlin, Clean Architecture",
      "description": "Logee Order Material is an order management application that "
          "provides various needs for shop owners.\nEasy and Safe, From Authorized Distributors, Fast Delivery",
      "link":
          "https://play.google.com/store/apps/details?id=com.dev.logeedistribusi",
      "image": "portfolio/material_logo.png",
    },
    {
      "name": "Logee Order Rural",
      "tech": "Android - Kotlin, Clean Architecture",
      "description": "Logee Order Rural is an order management application that "
          "provides various needs for shop owners.\nEasy and Safe, From Authorized Distributors, Fast Delivery",
      "link":
          "https://play.google.com/store/apps/details?id=com.telkom.logeerural",
      "image": "portfolio/rural_logo.png",
    },
    {
      "name": "Amigo Member",
      "tech": "Flutter, Clean Architecture",
      "description":
          "This Mobile Apps will further equip you to get the latest information about products, services, promos, points and many other features, all right at your fingertips.",
      "link":
          "https://play.google.com/store/apps/details?id=id.amigogroup.member",
      "image": "portfolio/amigo_logo.png",
    },
    {
      "name": "SambasKu",
      "tech": "Flutter, Clean Architecture",
      "description":
          "This Mobile Apps about place, food, news and many other features for traveling at Sambas District, all right at your fingertips.",
      "link": "https://github.com/bitstudio-id/SambasKu",
      "image": "portfolio/sambasku_logo.png",
    },
    {
      "name": "BIT Studio Indonesia",
      "tech": "Vue",
      "description":
          "An official website of BIT Studio Indonesia, its about the company, services, portfolios, and contacts",
      "link": "http://bitstudio.id/",
      "image": "portfolio/bit_logo.png",
    },
    {
      "name": "POTION - Sekotak Harapan",
      "tech": "Photoshop, After Effect",
      "description":
          "This video was made for Gemastik 8 competition, made for 3 months, by 13 people and 1 animator",
      "link": "https://www.youtube.com/watch?v=2HwdZH1Acbg",
      "image":
          "https://i.ytimg.com/vi/BYIndCQLKLo/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLB2Of6G_U070gNbmleZsbzopnlT8g",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffeeeeee),
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextHeader("Portfolio",
              textColor: Color(0xff212121),
              padding: EdgeInsets.symmetric(horizontal: 16)),
          Container(
              padding: EdgeInsets.only(top: 24),
              height: 400,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 8, right: 8),
                  itemCount: portfolios.length,
                  itemBuilder: (context, index) {
                    return ItemPortfolio(
                        width: 300,
                        height: 400,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        item: portfolios[index],
                        onTap: () {
                          launch(portfolios[index]['link']);
                        });
                  }))
        ]));
  }
}

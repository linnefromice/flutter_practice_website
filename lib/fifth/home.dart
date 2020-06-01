import 'package:flutter/material.dart';
import 'package:flutter_practice_website/fifth/utils/bg_painter.dart';
import 'package:flutter_practice_website/fifth/utils/cursor.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  final navItems = ["Home", "About", "Service", "Portfolio", "Contact"];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.width > 1000;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CustomPaint(
            painter: BackgroundPainter(),
          ),
          ListView(
            children: <Widget>[
              _appBar(size, isTablet)
            ],
          )
        ],
      ),
    );
  }

  _appBar(Size size, bool isTablet) => Container(
    height: 85,
    padding: EdgeInsets.only(right: 80),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 50, top: 20),
          child: Image.asset("assets/fifth/Logo.png"),
        ),
        isTablet
          ? Padding(
              padding: EdgeInsets.only(right: 40),
              child: Row(
                children: navItems.map<Widget>((t) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Cursor(
                    child: Text(
                      t.toUpperCase(),
                      style: GoogleFonts.asap(fontWeight: FontWeight.w400),
                    ),
                  )
                )).toList(),
              ),
            )
          : IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            )
      ],
    ),
  );
}
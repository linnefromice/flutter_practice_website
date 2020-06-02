import 'package:flutter/material.dart';
import 'package:flutter_practice_website/fifth/utils/bg_painter.dart';
import 'package:flutter_practice_website/fifth/utils/breakpoint.dart';
import 'package:flutter_practice_website/fifth/utils/cursor.dart';
import 'package:flutter_practice_website/fifth/widgets/hero_btn.dart';
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
              _appBar(size, isTablet),
              Wrap(
                alignment: WrapAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Container(
                    height: breakpoint(size.width, size.height * 0.7, 200, 180),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: breakpoint(
                        size.width,
                        CrossAxisAlignment.start,
                        CrossAxisAlignment.center,
                        CrossAxisAlignment.center
                      ),
                      mainAxisAlignment: breakpoint(
                        size.width,
                        MainAxisAlignment.center,
                        MainAxisAlignment.center,
                        MainAxisAlignment.end
                      ),
                      children: <Widget>[
                        Text(
                          "Luis Oenrique",
                          style: GoogleFonts.asap(
                            fontSize: breakpoint(size.width, 75, 55, 50),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 12,
                          ),
                        ),
                        Text(
                          "User Experience / User Interface Expert",
                          style: GoogleFonts.asap(
                            fontSize: breakpoint(size.width, 22, 20, 14),
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 35),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            HeroBtn(title: "Know more"),
                            SizedBox(width: 20),
                            HeroBtn(
                              title: "Hire me",
                              isOutline: true,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/fifth/Image.png",
                    fit: BoxFit.cover,
                    width: 700,
                    height: 650,
                  )
                ],
              )
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
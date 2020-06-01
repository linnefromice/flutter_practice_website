import 'package:flutter/material.dart';
import 'package:flutter_practice_website/fifth/utils/bg_painter.dart';

class Home extends StatelessWidget {
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
        )
      ],
    ),
  );
}
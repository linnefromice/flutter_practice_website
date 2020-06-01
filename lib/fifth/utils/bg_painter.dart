import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    int scl = 6;
    double rectWidth = size.width / scl;

    for (int i = 0; i < scl; i++) {
      canvas.drawRect(
        Rect.fromLTWH(i * rectWidth, 0, rectWidth, size.height),
        Paint()
          ..color = i % 2 == 0 ? Color(0xFFE2E2E2) : Color(0xFFDEDEDE)
          ..style = PaintingStyle.fill
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BackgroundPainter oldDelegate) => false;
}

import 'package:flutter/material.dart';

EdgeInsetsGeometry responsivePadding(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.width;
  if (deviceWidth < 700) {
    return EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);
  } else if (deviceWidth < 1200) {
    return EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0);
  } else if (deviceWidth < 1650) {
    return EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0);
  }
  return EdgeInsets.symmetric(horizontal: 100.0, vertical: 50.0);
}
import 'package:flutter/material.dart';
import 'package:flutter_practice_website/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:flutter_practice_website/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}

import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  NavigationBarTabletDesktop({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episode', "episodes"),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', "about"),
            ],
          )
        ],
      ),
    );
  }
}

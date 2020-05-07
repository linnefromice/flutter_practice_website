import 'package:flutter/material.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  NavigationBarMobile({Key key}) : super(key: key);

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
              NavBarItem('Episodes'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
            ],
          )
        ],
      ),
    );
  }
}

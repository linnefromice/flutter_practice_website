import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  NavigationBarMobile({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          NavBarLogo(),
        ],
      ),
    );
  }
}

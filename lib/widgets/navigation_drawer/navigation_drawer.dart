import 'package:flutter/material.dart';
import 'package:flutter_practice_website/widgets/navigation_drawer/navigation_drawer_header.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16
          ),
        ]
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Episode', Icons.videocam),
          DrawerItem('About', Icons.help),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_practice_website/first/widgets/navigation_bar/navbar_item.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem(this.title, this.icon, this.navigationPath, {Key key}) : super(key: key);
  final String title;
  final IconData icon;
  final String navigationPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title, navigationPath)
        ],
      ),
    );
  }
}
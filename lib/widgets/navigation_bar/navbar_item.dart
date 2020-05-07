import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  NavBarItem(this.title, {Key key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
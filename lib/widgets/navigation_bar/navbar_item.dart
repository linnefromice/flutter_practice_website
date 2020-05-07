import 'package:flutter/material.dart';
import 'package:flutter_practice_website/locator.dart';
import 'package:flutter_practice_website/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  NavBarItem(this.title, this.navigationPath, {Key key}) : super(key: key);

  final String title;
  final String navigationPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => locator<NavigationService>().navigateTo(navigationPath),
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
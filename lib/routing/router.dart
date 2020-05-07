import 'package:flutter/material.dart';
import 'package:flutter_practice_website/views/about_view.dart';
import 'package:flutter_practice_website/views/episodes_view.dart';
import 'package:flutter_practice_website/views/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case "home":
      return _getPageRoute(HomeView());
    case "episodes":
      return _getPageRoute(EpisodesView());
    case "about":
      return _getPageRoute(AboutView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute(this.child)
    : super(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) => child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) => FadeTransition(
            opacity: animation,
            child: child,
          ),
    );

}
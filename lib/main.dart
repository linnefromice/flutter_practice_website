import 'package:flutter/material.dart';
import 'package:flutter_practice_website/first/locator.dart';
import 'package:flutter_practice_website/first/views/home_view.dart';
import 'package:flutter_practice_website/second/Screens/Home/home_screen.dart';
import 'package:flutter_practice_website/second/constant.dart';

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SecondApp();
  }
}

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Open Sans',
          )
      ),
      home: HomeView(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_practice_website/first/locator.dart';
import 'package:flutter_practice_website/first/views/home_view.dart' as First;
import 'package:flutter_practice_website/second/Screens/Home/home_screen.dart' as Second;
import 'package:flutter_practice_website/second/constant.dart' ;
import 'package:flutter_practice_website/third/home_page.dart' as Third;
import 'package:flutter_practice_website/fourth/screens/home_screen.dart' as Fourth;
import 'package:flutter_practice_website/fifth/home.dart' as Fifth;

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FifthApp();
  }
}

class FifthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Fifth.Home(),
    );
  }
}

class FourthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web NYTimes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Fourth.HomeScreen(),
    );
  }
}

class ThirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Landing Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Third.HomePage(),
    );
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
      home: Second.HomeScreen(),
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
      home: First.HomeView(),
    );
  }
}
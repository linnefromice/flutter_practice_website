import 'package:flutter/material.dart';
import 'package:flutter_practice_website/second/Screens/Home/Components/app_bar.dart';

import 'Components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        // it will take full width
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/second/images/bg.png"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Spacer(flex: 1), // It will cover 1/3 of free spaces
            Body(),
            Spacer(flex: 2) // It will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Container(
      height: size.height,
      width: size.width,
      // it will take full width
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/second/images/bg.png"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
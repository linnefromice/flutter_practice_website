import 'package:flutter/material.dart';
import 'package:flutter_practice_website/second/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Burger".toUpperCase(),
            style: Theme.of(context).textTheme.headline1.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit, sed do elusmod tempor\n incididunt ut labor",
            style: TextStyle(
              fontSize: 21,
              color: kTextColor.withOpacity(0.34)
            ),
          )
        ],
      ),
    );
  }
}
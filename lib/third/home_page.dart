import 'package:flutter/material.dart';
import 'package:flutter_practice_website/third/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8F8FF),
            Color(0xFFFCFDFD),
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NavBar()
            ],
          ),
        ),
      ),
    );
  }
}
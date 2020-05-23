import 'package:flutter/material.dart';
import 'package:flutter_practice_website/third/utils/responsive_layout.dart';

class NavBar extends StatelessWidget {
  final navLinks = ["Home", "Products", "Features", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Montserrat-Bold"
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFC86DD7),
                      Color(0xFF3023AE),
                    ],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  )
                ),
                child: Center(
                  child: Text(
                    'B',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Text("Britu", style: TextStyle(fontSize: 26))
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[...navItem()],
          )
        ],
      ),
    );
  }
}
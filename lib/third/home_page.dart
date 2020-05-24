import 'package:flutter/material.dart';
import 'package:flutter_practice_website/third/utils/responsive_layout.dart';
import 'package:flutter_practice_website/third/widgets/navbar.dart';
import 'package:flutter_practice_website/third/widgets/search.dart';
import 'package:flutter_practice_website/third/widgets/sendbtn.dart';

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
              NavBar(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: 0.6,
            child: Image.network("assets/third/image_01.png", scale: 0.85),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: 0.6,
            child: Padding(
              padding: EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular",
                      color: Color(0xFF8591B0),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Welcome To ",
                      style: TextStyle(
                        fontSize: 60,
                        color: Color(0xFF8591B0),
                      ),
                      children: [
                        TextSpan(
                          text: "Britu",
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87
                          )
                        )
                      ]
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 20.0),
                    child: Text("LET'S EXPLORE THE WORLD"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Search()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Hello!",
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF8591B0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular"),
            ),
            RichText(
              text: TextSpan(
                text: 'WellCome To ',
                style: TextStyle(fontSize: 40, color: Color(0xFF8591B0)),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Britu',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black87)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20),
              child: Text("LET’S EXPLORE THE WORLD"),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.network(
                "assets/image_01.png",
                scale: 1,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Search(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
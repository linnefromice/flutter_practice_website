import 'package:flutter/material.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  CallToActionTabletDesktop(this.title, {Key key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 31, 229, 146),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.white
        ),
      ),
    );
  }

}
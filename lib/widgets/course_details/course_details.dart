import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Flutter WEB. \nTHE BASICS',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 80,
              height: 0.9
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'In this cource we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
            style: TextStyle(
              fontSize: 21,
              height: 1.7
            ),
          )
        ],
      ),
    );
  }

}
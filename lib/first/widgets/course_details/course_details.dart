import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      TextAlign textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.Mobile
        ? TextAlign.left : TextAlign.center;
      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile
        ? 50 : 80;
      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.Mobile
        ? 16 : 21;

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
                fontSize: titleSize,
                height: 0.9
              ),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'In this cource we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
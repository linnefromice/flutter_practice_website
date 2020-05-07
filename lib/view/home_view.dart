import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_website/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_practice_website/widgets/course_details/course_details.dart';
import 'package:flutter_practice_website/widgets/navigation_bar/navigation_bar.dart';

import '../widgets/centered_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join Course'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_website/widgets/home_content_desktop.dart';
import 'package:flutter_practice_website/widgets/home_content_mobile.dart';
import 'package:flutter_practice_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_practice_website/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/centered_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) => Scaffold(
      backgroundColor: Colors.white,
      drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
        ? NavigationDrawer() : null,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              )
            )
          ],
        ),
      ),
    ));
  }
}

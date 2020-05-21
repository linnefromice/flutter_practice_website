import 'package:flutter/material.dart';
import 'package:flutter_practice_website/first/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:flutter_practice_website/first/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  CallToAction(this.title, {Key key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
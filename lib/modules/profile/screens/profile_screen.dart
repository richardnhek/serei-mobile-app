import 'package:flutter/material.dart';
import 'package:serei_app/widgets/title_bar/title_bar_one.dart';

import 'profile_screen_ui.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TitleBarOne title = TitleBarOne(
    barTitle: "Profile",
    barIcon: Icons.settings,
    iconSize: 32.0,
    onPressed: () => {},
  );

  @override
  Widget build(BuildContext context) {
    return ProfileScreenUI(
      title: title,
    );
  }
}

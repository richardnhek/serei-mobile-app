import 'package:flutter/material.dart';

class ActiveNavIcon extends StatelessWidget {
  ActiveNavIcon({this.navIcon});
  final Icon navIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.withOpacity(0.8)),
      width: 60,
      height: 40,
      child: Center(child: navIcon),
    );
  }
}

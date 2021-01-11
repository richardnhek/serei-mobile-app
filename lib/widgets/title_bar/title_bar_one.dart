import 'package:flutter/material.dart';

class TitleBarOne extends StatelessWidget {
  TitleBarOne({this.barTitle, this.barIcon, this.onPressed});

  final String barTitle;
  final Icon barIcon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(),
    );
  }
}

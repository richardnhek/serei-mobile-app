import 'package:flutter/material.dart';

class TitleBarOne extends StatelessWidget {
  TitleBarOne({this.barTitle, this.barIcon, this.iconSize, this.onPressed});

  final String barTitle;
  final IconData barIcon;
  final double iconSize;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            barTitle,
            style: TextStyle(
                fontSize: 22.0, fontFamily: "Biko", color: Colors.white),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Icon(
              barIcon,
              color: Colors.white,
              size: iconSize,
            ),
          )
        ],
      ),
    );
  }
}

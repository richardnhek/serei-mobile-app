import 'dart:ui';

import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  AppSearchBar({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.16),
                  spreadRadius: 5,
                  blurRadius: 5)
            ]),
        height: 48,
        margin: EdgeInsets.only(top: 10, left: 25, right: 25),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: "Kano",
                fontSize: 14,
                color: Color(0xFF49475A).withOpacity(0.5)),
            prefixIcon: Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: Icon(
                Icons.search,
                size: 18,
                color: Color(0xFF49475A),
              ),
            ),
          ),
        ));
  }
}

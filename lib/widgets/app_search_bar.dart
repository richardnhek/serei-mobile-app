import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class AppSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.16),
                spreadRadius: 3,
                blurRadius: 5)
          ]),
      height: 45,
      margin: EdgeInsets.only(top: 10, left: 25, right: 25),
    );
  }
}

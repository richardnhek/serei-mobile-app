import 'package:flutter/material.dart';
import 'package:serei_app/widgets/app_search_bar.dart';

class InboxScreenUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [Expanded(child: AppSearchBar())],
        ),
      ),
    );
  }
}

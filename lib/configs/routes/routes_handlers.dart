import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:serei_app/modules/home/screens/home_screen.dart';
import 'package:serei_app/modules/categories/screens/big_categories.dart';
import 'package:serei_app/modules/inbox/screens/inbox_screen.dart';

class RoutesHandler {
  static var homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomeScreen();
  });
  static var categoriesHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return BigCategories();
  });
  static var inboxHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return InboxScreen();
  });
}

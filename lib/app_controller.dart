import 'package:flutter/material.dart';

import 'main_navigation.dart';
import 'modules/categories/screens/big_categories.dart';
import 'modules/categories/screens/sub_categories.dart';
import 'modules/splash/screens/splash_screen.dart';

class SereiAppController extends StatefulWidget {
  @override
  _SereiAppControllerState createState() => _SereiAppControllerState();
}

class _SereiAppControllerState extends State<SereiAppController> {
  final Map<String, Widget> routes = {
    "/": SplashScreen(),
    "/categories": BigCategories(),
    "/main_navigation": SereiAppMainNavigation(),
    "/sub_categories": SubCategories()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        onGenerateRoute: (RouteSettings settings) {
          Route screen;
          screen = MaterialPageRoute(
              settings: settings,
              builder: (BuildContext context) {
                return routes[settings.name];
              });
          return screen;
        });
  }
}

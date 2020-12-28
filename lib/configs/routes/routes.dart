import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'routes_handlers.dart';

class MainAppRouter {
  static FluroRouter router = FluroRouter();
  static void setUpRouter() {
    router.define('/',
        handler: RoutesHandler.homeHandler,
        transitionType: TransitionType.fadeIn);
    router.define('/categories',
        handler: RoutesHandler.categoriesHandler,
        transitionType: TransitionType.fadeIn);
    router.define('/inbox',
        handler: RoutesHandler.inboxHandler,
        transitionType: TransitionType.fadeIn);
  }
}

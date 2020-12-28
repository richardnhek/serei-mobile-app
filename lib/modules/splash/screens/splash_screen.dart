import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'splash_screen_ui.dart';
import 'package:serei_app/providers/app_provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  CurvedAnimation curveAnimation;
  final splashDelay = 8;
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1600),
    );

    curveAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    );

    animation = Tween(
      begin: 0.1,
      end: 1.0,
    ).animate(curveAnimation);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    animationController.forward();
    runAppInitialization();
    super.initState();
  }

  //After the splash screen finishes loading
  Future<void> determineInitialRoute() async {
    Navigator.pushNamed(context, "/main_navigation");
  }
  //

  //Pre-requests before the app is usable
  void runAppInitialization() async {
    SereiAppProvider sereiAppProvider = Provider.of(context, listen: false);
    await Future.delayed(const Duration(milliseconds: 4800));
    await sereiAppProvider.requestPermissions();
    await sereiAppProvider
        .getDeviceType(MediaQuery.of(context).size.shortestSide);
    sereiAppProvider.setAppOrientation();
    await determineInitialRoute();
  }
  //

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SplashScreenUI(animation: animation);
  }
}

import 'package:flutter/material.dart';
import 'splash_screen.dart';

class SplashScreenUI extends StatelessWidget {
  const SplashScreenUI({this.animation});
  final Animation<double> animation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Image.asset("assets/images/logo/test_logo.jpg",
              width: 300, height: 300),
        ),
      ),
    );
  }
}

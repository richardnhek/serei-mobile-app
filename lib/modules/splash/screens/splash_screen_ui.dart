import 'package:flutter/material.dart';

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
          child: Image.asset("assets/images/logo/test_logo.png",
              width: 300, height: 300),
        ),
      ),
    );
  }
}

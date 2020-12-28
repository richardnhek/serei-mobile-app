import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/providers/app_provider.dart';
import 'app_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SereiAppProvider())],
      child: SereiAppController(),
    );
  }
}

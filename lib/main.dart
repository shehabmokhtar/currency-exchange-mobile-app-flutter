import 'package:currency_exchange/core/router.dart';
import 'package:currency_exchange/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRouter,
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
    );
  }
}

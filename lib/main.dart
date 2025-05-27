import 'package:bookly/core/di/service_locator.dart';
import 'package:bookly/core/theme/app_theme.dart';
import 'package:bookly/modules/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      theme: AppTheme.darkTheme,
    );
  }
}

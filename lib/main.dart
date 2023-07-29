import 'package:flutter/material.dart';
import 'package:flutter_application_tt/config/theme/app_theme.dart';
import 'package:flutter_application_tt/screens/inicio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app de diabetes',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const InicioScreen(),
    );
  }
}

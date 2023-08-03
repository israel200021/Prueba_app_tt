import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_tt/config/theme/app_theme.dart';
import 'package:flutter_application_tt/screens/horas_dormidas_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'YOUR_API_KEY',
      appId: 'YOUR_APP_ID',
      messagingSenderId: 'YOUR_MESSAGING_SENDER_ID',
      projectId: 'YOUR_PROJECT_ID',
      databaseURL: 'https://regluc-ab13f-default-rtdb.firebaseio.com',
    ),
  );
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
      home: const HorasDormidasScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_tt/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color primary = Colors.blue;


  //Agregamos el final porque si se va a instanciar
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario de la app
    primaryColor: primary,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'Gudea',
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: const CardTheme(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 10,
      color: Colors.white,
      // shadowColor: Colors.blue,
      // margin: EdgeInsets.all(30), 
      margin: EdgeInsets.only(bottom: 10, left: 35, right: 35, top: 10),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app de diabetes',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const InicioScreen(),
    );
  }
}


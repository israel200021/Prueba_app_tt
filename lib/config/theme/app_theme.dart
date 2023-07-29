import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blue;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario de la app
    primaryColor: primary,
    useMaterial3: true,
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

  getTheme() {}
}

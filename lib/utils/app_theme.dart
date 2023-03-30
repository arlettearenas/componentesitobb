import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.greenAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.orange,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: Colors.greenAccent,
      //Appbar Theme
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 35, 9, 104),
        elevation: 0,
      ));
}

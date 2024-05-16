import 'package:flutter/material.dart';

final themeApp = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromRGBO(233, 244, 255, 1),
    secondary: Color.fromRGBO(54, 84, 134, 1),
    onSecondary: Colors.white,
    error: Colors.pink,
    onError: Colors.pink,
    background: Color.fromARGB(255, 255, 255, 255),
    onBackground: Colors.blue,
    surface: Colors.white,
    onSurface: Colors.black,
    onPrimary: Color.fromRGBO(233, 244, 255, 1),
  ),
);

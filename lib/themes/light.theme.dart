import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    primaryColorLight: lightColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}

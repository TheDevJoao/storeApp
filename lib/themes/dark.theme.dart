import 'package:flutter/material.dart';

const primaryColor = Color(0xFFFFCC00);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: lightColor,
    colorScheme: ColorScheme
      .fromSwatch()
      .copyWith(secondary: Colors.black26, brightness: Brightness.dark),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:storeapp/pages/tabs.page.dart';
import 'package:storeapp/themes/dark.theme.dart';
import 'package:storeapp/themes/light.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: DefaultTabController(length: 3, child: TabsPage()),
    );
  }
}
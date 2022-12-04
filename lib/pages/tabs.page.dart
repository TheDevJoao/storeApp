// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:storeapp/pages/cart.page.dart';
import 'package:storeapp/pages/home.page.dart';
import 'package:storeapp/pages/login.page.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [HomePage(), CartPage(), LoginPage()],
      ),
      bottomNavigationBar: TabBar(
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

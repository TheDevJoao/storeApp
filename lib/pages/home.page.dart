// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            search(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: categoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Best selling",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See all"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: productList(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(left: 20),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Icon(Icons.search),
        Container(
          width: 300,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Search...",
              labelStyle: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        caregoryItem(),
        caregoryItem(),
        caregoryItem(),
        caregoryItem(),
        caregoryItem(),
      ],
    ),
  );
}

Widget caregoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      boxShadow: [
        BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}

Widget productList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        productItem(),
        productItem(),
        productItem(),
        productItem(),
      ],
    ),
  );
}

Widget productItem() {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/product-1.png",
          width: 170,
          height: 170,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

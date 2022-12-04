// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String? image;
  final String? title;
  final String? brand;
  final double? price;

  ProductPage({
    @required this.image,
    @required this.title,
    @required this.brand,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: image!,
                  child: Image.asset(
                    image!,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(brand!),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "A really cool fit",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
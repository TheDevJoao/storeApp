// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? image;

  CategoryItem({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
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
      child: Image.asset(image!),
    );
  }
}

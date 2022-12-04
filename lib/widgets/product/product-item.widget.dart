// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../pages/product.page.dart';

class ProductItem extends StatelessWidget {
  final String? image;
  final String? title;
  final String? brand;
  final double? price;

  ProductItem({
    @required this.image,
    @required this.title,
    @required this.brand,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.08),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                      image: image,
                      title: title,
                      brand: brand,
                      price: price,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: image!,
                child: Image.asset(
                  image!,
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: Text(
              title!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            brand!,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

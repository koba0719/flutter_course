import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUri;
  final double price;
  final String description;

  ProductPage(this.title, this.imageUri, this.price, this.description);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button Pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(this.imageUri),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                this.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    fontFamily: 'Oswald'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Union Square, San Francisco',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    '|',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Text(
                  '\$' + this.price.toString(),
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                this.description,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

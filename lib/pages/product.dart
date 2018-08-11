import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUri;

  ProductPage(this.title, this.imageUri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(this.imageUri),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(this.title),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('BACK'),
              onPressed: () => Navigator.pop(context, true),
            ),
          )
        ],
      ),
    );
  }
}

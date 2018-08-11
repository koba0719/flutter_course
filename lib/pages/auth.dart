import 'package:flutter/material.dart';

import 'package:flutter_cource/pages/products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Please Authentication')),
      body: Center(
          child: RaisedButton(
        child: Text('Login'),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ProductsPage(),
            ),
          );
        },
      )),
    );
  }
}

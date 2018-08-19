import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_cource/pages/products_admin.dart';
import 'package:flutter_cource/pages/products.dart';
import 'package:flutter_cource/pages/product.dart';
import 'package:flutter_cource/pages/auth.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _products = [];

  void _addProducts(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
      ),
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/products': (BuildContext context) => ProductsPage(this._products),
        '/admin': (BuildContext context) =>
            ProductsAdminPage(this._addProducts, this._deleteProduct),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }

        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductPage(
                  _products[index]['title'],
                  _products[index]['image'],
                  _products[index]['price'],
                  _products[index]['description']
                ),
          );
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        print('onUnknownRoute: this Route is unknown');
        return MaterialPageRoute(
          builder: (BuildContext context) => ProductsPage(this._products),
        );
      },
    );
  }
}

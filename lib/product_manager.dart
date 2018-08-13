import 'package:flutter/material.dart';

import 'package:flutter_cource/products.dart';


class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> _products;

  ProductManager(this._products);

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build()');
    return Column(children: [
      Expanded(
        child: Products(_products),
      )
    ]);
  }
}

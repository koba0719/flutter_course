import 'package:flutter/material.dart';

import 'package:flutter_cource/products.dart';
import 'package:flutter_cource/product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> _products;
  final Function addProducts;
  final Function deleteProduct;

  ProductManager(this._products, this.addProducts, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    print('[ProductManager Widget] build()');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(addProducts),
      ),
      Expanded(
        child: Products(_products, deleteProduct: deleteProduct),
      )
    ]);
  }
}

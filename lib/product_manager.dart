import 'package:flutter/material.dart';

import 'package:flutter_cource/products.dart';
import 'package:flutter_cource/product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    print('[ProductManager Widget] initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager Widget] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(Map<String, String> product) {
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
    print('[ProductManager Widget] build()');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(_addProducts),
      ),
      Expanded(
        child: Products(_products, deleteProduct: _deleteProduct),
      )
    ]);
  }
}
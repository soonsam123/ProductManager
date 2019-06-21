import 'package:flutter/material.dart';
import './products.dart';

// 1. Stateful Widgets returns a State
// 2. State encapsulates a StatefulWidget

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: Products(
        products,
      )),
    ]);
  }
}

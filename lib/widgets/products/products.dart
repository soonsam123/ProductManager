import 'package:flutter/material.dart';

import './item_product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductList() {
    Widget productList =
        Center(child: Text('No products availabe. Add new ones'));
    if (products.length > 0) {
      productList = ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              ItemProduct(products[index], index),
          itemCount: products.length);
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}

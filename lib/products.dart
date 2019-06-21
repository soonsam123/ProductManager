import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.pushNamed<bool>(
                              context, '/product/' + index.toString()),
                  child: Text('Detail'))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productList =
        Center(child: Text('No products availabe. Add new ones'));
    if (products.length > 0) {
      productList = ListView.builder(
          itemBuilder: _buildProductItem, itemCount: products.length);
    }
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}

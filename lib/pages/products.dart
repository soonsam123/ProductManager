import 'package:flutter/material.dart';

import '../widgets/products/products.dart';
import '../widgets/ui_elements/drawer_custom.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(['Manage Products', 'Sign Out'], ['/admin', '/'],
            [Icons.edit, Icons.exit_to_app]),
        appBar: AppBar(
          title: Text('EasyList'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.favorite), onPressed: () {})
          ],
        ),
        body: Products(products));
  }
}

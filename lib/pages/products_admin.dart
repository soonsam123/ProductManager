import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';
import '../widgets/ui_elements/drawer_custom.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: CustomDrawer(['All Products', 'Sign Out'], ['/product', '/'],
              [Icons.shop, Icons.exit_to_app]),
          appBar: AppBar(
            title: Text('Manage Products'),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: 'Add Product',
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              )
            ]),
          ),
          body: TabBarView(children: <Widget>[
            ProductCreatePage(addProduct),
            ProductListPage()
          ]),
        ));
  }
}

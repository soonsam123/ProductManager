import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('CHOOSE'),
                ),
                ListTile(
                  title: Text('All products'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/product');
                  },
                )
              ],
            ),
          ),
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

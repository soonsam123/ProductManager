import 'package:flutter/material.dart';

import '../widgets/ui_elements/title_default.dart';
import '../widgets/products/price_tag.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double price;

  ProductPage(this.title, this.imageUrl, this.description, this.price);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Deleting an item can not be undone'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context, true);
                  },
                  child: Text('CONTINUE')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('DISCARD')),
            ],
          );
        });
  }

  Widget _buildHeaderText() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 5.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TitleDefault(title),
            SizedBox(
              width: 8.0,
            ),
            PriceTag(price.toString())
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(imageUrl),
              _buildHeaderText(),
              Text('Union State, San Francisco'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(description),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//return WillPopScope(
//onWillPop: () {
//Navigator.pop(context, false);
//return Future.value(false); // Executes the code in the top and stop.
//},

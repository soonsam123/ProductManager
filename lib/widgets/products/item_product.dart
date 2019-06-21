import 'package:flutter/material.dart';

import './price_tag.dart';
import './border_box_text.dart';
import '../ui_elements/title_default.dart';

class ItemProduct extends StatelessWidget {
  final Map<String, dynamic> _product;
  final int _index;

  ItemProduct(this._product, this._index);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(_product['image']),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitleDefault(_product['title']),
                SizedBox(
                  width: 8.0,
                ),
                PriceTag(_product['price'].toString()),
              ],
            ),
          ),
          BorderBoxText('State Union, San Francisco'),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => Navigator.pushNamed<bool>(
                    context, '/product/' + _index.toString()),
                icon: Icon(Icons.info),
                color: Theme.of(context).accentColor,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}

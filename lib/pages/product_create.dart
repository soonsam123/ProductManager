import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }

}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Title'),
                onChanged: (String value) => titleValue = value,
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Description'),
                  onChanged: (String value) => descriptionValue = value,
                )),
            Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Value'),
                  onChanged: (String value) => priceValue = double.parse(value),
                )),
            RaisedButton(onPressed: () {
              final Map<String, dynamic> product = {
                'title': titleValue,
                'description': descriptionValue,
                'price': priceValue,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/product');
            }, child: Text('SAVE'),
            textColor: Colors.white,
            color: Theme.of(context).accentColor,)
          ],
        ));
  }
}
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
  String _titleValue = '';
  String _descriptionValue = '';
  double _priceValue;

  Widget _buildTitleField() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Title'),
        onChanged: (String value) => _titleValue = value,
      ),
    );
  }

  Widget _buildDescriptionField() {
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: TextField(
          decoration: InputDecoration(labelText: 'Description'),
          onChanged: (String value) => _descriptionValue = value,
        ));
  }

  Widget _buildValueField() {
    return Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: TextField(
          decoration: InputDecoration(labelText: 'Value'),
          onChanged: (String value) => _priceValue = double.parse(value),
        ));
  }

  void _submitForm() {
    final Map<String, dynamic> product = {
      'title': _titleValue,
      'description': _descriptionValue,
      'price': _priceValue,
      'image': 'assets/food.jpg'
    };
    widget.addProduct(product);
    Navigator.pushReplacementNamed(context, '/product');
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 768.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;

    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
          children: <Widget>[
            _buildTitleField(),
            _buildDescriptionField(),
            _buildValueField(),
            RaisedButton(
              onPressed: _submitForm,
              child: Text('SAVE'),
              textColor: Colors.white,
            )
          ],
        ));
  }
}

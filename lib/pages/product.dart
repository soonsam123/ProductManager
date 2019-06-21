import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(title: Text('Are you sure?'),
            content: Text('Deleting an item can not be undone'),
            actions: <Widget>[
              FlatButton(onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, true);
              }, child: Text('CONTINUE')),
              FlatButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('DISCARD')),
            ],);
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false); // Executes the code in the top and stop.
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(imageUrl),
              Container(margin: EdgeInsets.all(10.0), child: Text(title)),
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  onPressed: () => _showWarningDialog(context),
                  child: Text('DELETE'),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

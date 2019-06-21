import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String emailValue = '';
  String passwordValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) => emailValue = value,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (String value) => passwordValue = value,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: RaisedButton(
                child: Text('LOGIN'),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                onPressed: () {
                  print('Email: $emailValue - Password: $passwordValue');
                  Navigator.pushReplacementNamed(context, '/product');
                },
              ),
            )
          ],
        ));
  }
}

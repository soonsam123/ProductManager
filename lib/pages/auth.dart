import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue = '';
  String _passwordValue = '';
  bool _acceptTerms = false;

  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Email'),
        keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
          setState(() {
            _emailValue = value;
          });
        },
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Password'),
        obscureText: true,
        onChanged: (String value) {
          setState(() {
            _passwordValue = value;
          });
        },
      ),
    );
  }

  Widget _buildTermsSwitch() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SwitchListTile(
        value: _acceptTerms,
        onChanged: (bool value) {
          setState(() {
            _acceptTerms = value;
          });
        },
        title: Text('Accept Terms'),
      ),
    );
  }

  void _submitForm() {
    print('Email: $_emailValue - Password: $_passwordValue');
    Navigator.pushReplacementNamed(context, '/product');
  }

  void _buildDialog() {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(title: Text('Clicked'),);
    })
  }

  Widget _buildSignUpText() {
    return GestureDetector(
      onTap: _buildDialog,
      child: Container(
        child: Text('Sign up'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 768.0 ? 500.0 : deviceWidth * 0.95;

    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: targetWidth,
              child: Column(
                children: <Widget>[
                  _buildEmailField(),
                  _buildPasswordField(),
                  _buildTermsSwitch(),
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text('LOGIN'),
                      textColor: Colors.white,
                      onPressed: _submitForm,
                    ),
                  ),
                  _buildSignUpText()
                ],
              ),
            ),
          ),
        ));
  }
}

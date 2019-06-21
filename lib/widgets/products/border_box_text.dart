import 'package:flutter/material.dart';

class BorderBoxText extends StatelessWidget {
  final String textValue;

  BorderBoxText(this.textValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 5.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(5.0)),
      child: Text(textValue),
    );
  }
}

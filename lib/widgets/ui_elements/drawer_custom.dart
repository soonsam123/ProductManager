import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<String> titles;
  final List<String> routes;
  final List<IconData> icons;

  CustomDrawer(this.titles, this.routes, this.icons);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('CHOOSE'),
          ),
          ListTile(
            title: Text(titles[0]),
            leading: Icon(icons[0]),
            onTap: () {
              Navigator.pushReplacementNamed(context, routes[0]);
            },
          ),
          ListTile(
            title: Text(titles[1]),
            leading: Icon(icons[1]),
            onTap: () {
              Navigator.pushReplacementNamed(context, routes[1]);
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Next extends StatelessWidget {
  String name, pass;

  Next({required this.name, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value"),backgroundColor: Color(-8520385),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(title: Text("Username:${name}"),),
        ListTile(title: Text("Password:${pass}"),)

      ],),
    );

  }
}

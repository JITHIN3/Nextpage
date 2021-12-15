
import 'package:flutter/material.dart';

class Sec extends StatefulWidget {
  String  name, pass;


  Sec({required this.name,required this.pass});

  @override
  _SecState createState() => _SecState();

}

class _SecState extends State<Sec> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text('UserName:${name}'),
        Text('Password:${pass}'),
      ],),
    );
  }
}

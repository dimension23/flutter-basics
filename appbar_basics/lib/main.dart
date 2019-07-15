import 'package:flutter/material.dart';

void main() => runApp(AppBarBasics());

class AppBarBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('AppBar Basics'),
          centerTitle: true,
          elevation: 30.0,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'customw.dart';

void main() => runApp(CustomClassWidget());

class CustomClassWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Color Container'),
        ),
        body: ColorContainer(),
      ),
    );
  }
}

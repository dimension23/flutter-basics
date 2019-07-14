import 'package:flutter/material.dart';

void main() {
  runApp(new application());
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.amberAccent,
          child: new Container(
            color: Colors.deepPurpleAccent,
            margin: const EdgeInsets.all(30.0),
          )
        ),
      ),
    );
  }
}

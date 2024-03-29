import 'package:flutter/material.dart';

void main() => runApp(new RowAndColumn());

class RowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Row & Column',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Row & Column')),
        body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('This'),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('This'),
                new Text('is'),
                new Text('Column'),
              ],
            ),
            new Text('Row'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(new BasicListWidget());

class BasicListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Basic List Widget',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: new Scaffold(
        appBar: new AppBar(title: new Text('Basic List Widget'),),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Item 1'),
              trailing: new Icon(Icons.arrow_forward)
            ),
            new ListTile(
                title: new Text('Item 2'),
                trailing: new Icon(Icons.arrow_forward)
            ),
            new ListTile(
                title: new Text('Item 3'),
                trailing: new Icon(Icons.arrow_forward)
            ),
          ],
        ),
      ),
    );
  }
}

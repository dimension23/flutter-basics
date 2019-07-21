import 'package:flutter/material.dart';

void main() => runApp(ButtonWidgetSample());

class ButtonWidgetSample extends StatefulWidget {
  @override
  _ButtonWidgetSampleState createState() => _ButtonWidgetSampleState();
}

class _ButtonWidgetSampleState extends State<ButtonWidgetSample> {
  String ptext = '';
  void method1(value) {
    setState((){
      ptext = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Button Widget'),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(onPressed: (){method1('You pressed raised button');}, child: new Text('Raised Button'),),
            new FlatButton(onPressed: (){method1('You pressed flat button');}, child: new Text('Flat Button'),),
            new Text(ptext),
          ],
        ),
      ),
    );
  }
}

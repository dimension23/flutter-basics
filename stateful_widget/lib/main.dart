import 'package:flutter/material.dart';

void main() {
  runApp(new StatefulApplication());
}

class StatefulApplication extends StatefulWidget {
  @override
  _StatefulApplicationState createState() => _StatefulApplicationState();
}

class _StatefulApplicationState extends State<StatefulApplication> {

  String dynamicText = '';

  @override
  void initState() {
    // TODO: implement initState
    dynamicText = 'Click this Button';
    super.initState();
  }

  void method1(){
    setState(() {
      dynamicText = 'The text has been changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stateful Widget',
      home: new Scaffold(
        body: new Center(
          child: new RaisedButton(
              onPressed: () {method1();}, child: new Text(dynamicText)),
        ),
      ),
    );
  }
}

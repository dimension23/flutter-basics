import 'package:flutter/material.dart';

void main() => runApp(CheckBoxWidgetSample());

class CheckBoxWidgetSample extends StatefulWidget {
  @override
  _CheckBoxWidgetSampleState createState() => _CheckBoxWidgetSampleState();
}

class _CheckBoxWidgetSampleState extends State<CheckBoxWidgetSample> {
  bool cbool = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('CheckBox'),
          centerTitle: true,
        ),
        body: new Center(
          child: new Checkbox(
            value: cbool,
            onChanged: (bool cb) {
              setState(() {
                cbool = cb;
              });
            },
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(SwitchWidgetSample());

class SwitchWidgetSample extends StatefulWidget {
  @override
  _SwitchWidgetSampleState createState() => _SwitchWidgetSampleState();
}

class _SwitchWidgetSampleState extends State<SwitchWidgetSample> {
  bool switchValue = false;
  void switchState(value) {
    setState(() {
      switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Switch(
                  value: switchValue,
                  onChanged: (bool val) {
                    switchState(val);
                  }),
              new SizedBox(
                height: 10.0,
              ),
              new Text('Value : $switchValue'),
            ],
          ),
        ),
      ),
    );
  }
}

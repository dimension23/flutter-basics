import 'package:flutter/material.dart';

void main() => runApp(RadioWidgetSample());

class RadioWidgetSample extends StatefulWidget {
  @override
  _RadioWidgetSampleState createState() => _RadioWidgetSampleState();
}

class _RadioWidgetSampleState extends State<RadioWidgetSample> {
  int radioValue = 0;
  void setRadioState(value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Radio Widget'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Radio(
                  value: 1,
                  groupValue: radioValue,
                  onChanged: (int rVal) {
                    setRadioState(rVal);
                  }),
              new Radio(
                  value: 2,
                  groupValue: radioValue,
                  onChanged: (int rVal) {
                    setRadioState(rVal);
                  }),
              new Radio(
                  value: 3,
                  groupValue: radioValue,
                  onChanged: (int rVal) {
                    setRadioState(rVal);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

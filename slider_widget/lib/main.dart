import 'package:flutter/material.dart';

void main() => runApp(SliderWidgetSample());

class SliderWidgetSample extends StatefulWidget {
  @override
  _SliderWidgetSampleState createState() => _SliderWidgetSampleState();
}

class _SliderWidgetSampleState extends State<SliderWidgetSample> {
  double dtext = 1.0;
  void method1(value) {
    setState(() {
      dtext = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Slider Widget'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Slider(value: dtext, min: 1.0, max: 10.0, onChanged: (double dval){
                method1(dval);
              }),
              new Text('Value: $dtext'),
            ],
          ),
        ),
      ),
    );
  }
}

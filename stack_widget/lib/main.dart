import 'package:flutter/material.dart';

void main() => runApp(StackWidget());

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Stack',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Stack'),
        ),
        body: new Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            new Card(color: Colors.purpleAccent, child: new Padding(padding: const EdgeInsets.all(200.0))),
            new Card(color: Colors.indigoAccent, child: new Padding(padding: const EdgeInsets.all(175.0))),
            new Card(color: Colors.blueAccent, child: new Padding(padding: const EdgeInsets.all(150.0))),
            new Card(color: Colors.lightGreenAccent, child: new Padding(padding: const EdgeInsets.all(125.0))),
            new Card(color: Colors.yellowAccent, child: new Padding(padding: const EdgeInsets.all(100.0))),
            new Card(color: Colors.orangeAccent, child: new Padding(padding: const EdgeInsets.all(75.0))),
            new Card(color: Colors.redAccent, child: new Padding(padding: const EdgeInsets.all(50.0))),
            new Card(color: Colors.white, child: new Padding(padding: const EdgeInsets.all(25.0))),
          ],
        ),
      ),
    );
  }
}

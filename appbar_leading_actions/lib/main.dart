import 'package:flutter/material.dart';

void main() => runApp(AppBarLeadingActions());

class AppBarLeadingActions extends StatefulWidget {
  @override
  _AppBarLeadingActionsState createState() => _AppBarLeadingActionsState();
}

class _AppBarLeadingActionsState extends State<AppBarLeadingActions> {
  String mtext = ' ';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('AppBar Widget'),
          leading: new Icon(Icons.menu),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  mtext = 'Arrow Icon';
                });
              },
            ),
            new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () {
                setState(() {
                  mtext = 'Close Icon';
                });
              },
            ),
          ],
        ),
        body: new Center(
          child: new Text(mtext),
        ),
      ),
    );
  }
}

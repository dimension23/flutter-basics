import 'package:flutter/material.dart';

void main() => runApp(DrawerWidgetSample());

class DrawerWidgetSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Drawer'),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('Prashant Patel'),
                accountEmail: Text('prashant.patel@gmx.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black26,
                  child: Text('P'),
                ),
                decoration: new BoxDecoration(color: Colors.orange),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(backgroundColor: Colors.black26, child: Text('V')),
                  new CircleAvatar(backgroundColor: Colors.black26, child: Text('N')),
                ],
              ),
              new ListTile(
                title: Text('Page 1'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: Text('Page 2'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: Text('Close'),
                trailing: new Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

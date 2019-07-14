import 'package:flutter/material.dart';

void main() => runApp(new ListWidgetUser());

class ListWidgetUser extends StatefulWidget {
  @override
  _ListWidgetUserState createState() => _ListWidgetUserState();
}

class _ListWidgetUserState extends State<ListWidgetUser> {

  List<int> items = new List();

  @override
  void initState() {
    for(int i=1; i <= 50; i++) {
      items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'List Widget User',
      home: new Scaffold(
        appBar: new AppBar(title: new Text('List Widget User'),),
        body: new ListView.builder(
          itemCount: items.length,
            itemBuilder: (BuildContext context, int index){
              return new ListTile(
                title: new Text('Item# $index'),
                trailing: new Icon(Icons.arrow_forward),
              );
            },
        ),
      ),
    );
  }
}


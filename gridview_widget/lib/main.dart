import 'package:flutter/material.dart';

void main() => runApp(new GridViewWidget());

class GridViewWidget extends StatefulWidget {
  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  List<int> _items = new List();

  @override
  void initState() {
    for (int i = 1; i <= 50; i++) {
      _items.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GridView',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(title: new Text('GridView')),
        body: new GridView.builder(
          itemCount: _items.length,
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.redAccent,
              margin: const EdgeInsets.all(3.0),
              child: new Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text('$index')),
              ),
            );
          },
        ),
      ),
    );
  }
}

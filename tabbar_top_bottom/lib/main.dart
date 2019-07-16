import 'package:flutter/material.dart';

void main() => runApp(TabBarTopBottom());

class TabBarTopBottom extends StatefulWidget {
  @override
  _TabBarTopBottomState createState() => _TabBarTopBottomState();
}

class _TabBarTopBottomState extends State<TabBarTopBottom>
    with SingleTickerProviderStateMixin {
  TabController _tcontrol;
  @override
  void initState() {
    _tcontrol = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Tab Bar'),
          bottom: new TabBar(
            controller: _tcontrol,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.home)),
              new Tab(icon: Icon(Icons.explore)),
              new Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: new TabBarView(controller: _tcontrol, children: <Widget>[
          new Center(child: Text('Home')),
          new Center(child: Text('Explore')),
          new Center(child: Text('Settings')),
        ]),
        bottomNavigationBar: new Material(
          color: Colors.blueAccent,
          child: new TabBar(
            controller: _tcontrol,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.home)),
              new Tab(icon: Icon(Icons.explore)),
              new Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}

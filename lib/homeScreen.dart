import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _decoration = new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/flutterwithlogo.png'),
        ),
      ),
    );

    var _hero = new Hero(tag: 'hero-flutterwithlogo-tag', child: _decoration);

    var _container = new Container(
      child: _hero,
      width: 300.0,
      height: 200.0,
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomeScreen'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: _container,
            )
          ],
        ),
      ),
    );
  }
}

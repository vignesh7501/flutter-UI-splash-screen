import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_splash_screen/homeScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    var _decoratedBox = new DecoratedBox(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage('images/cumulations.png'),
        ),
      ),
    );

    var _hero = new Hero(tag: 'hero-flutterwithlogo-tag', child: _decoratedBox);

    var _container = new Container(
      child: _hero,
      width: 150.0,
      height: 100.0,
    );

    return new Scaffold(
      body: new Center(
        child: _container,
      ),
    );
  }
}

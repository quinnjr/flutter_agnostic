import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_agnostic/flutter_agnostic.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AgnosticApp(
        title: 'Agnostic Library Demo',
        materialTheme: ThemeData(primarySwatch: Colors.blue),
        cupertinoTheme:
            CupertinoThemeData(primaryColor: CupertinoColors.activeBlue),
        home: HomePage(title: 'Agnostic Counter App'));
  }
}

class HomePage extends StatefulWidget {
  final String? title;

  HomePage({Key? key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AgnosticScaffold(
        appBar: AppBar(title: Text(widget.title!)),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Text('You have pushed the button $_counter times'),
              SizedBox(width: 0, height: 16),
              AgnosticButton(
                  onPressed: _incrementCounter, child: Text('Increment'))
            ])));
  }
}

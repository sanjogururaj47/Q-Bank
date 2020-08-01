import 'package:flutter/material.dart';

import './subjects_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Come get this bread',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Raleway',
        textTheme: ThemeData.dark().textTheme
      ),
      home: SubjectScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('How\'d you like my body'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'test.dart';
//import 'abc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency App',
      theme: ThemeData(
          primarySwatch: Colors.yellow, scaffoldBackgroundColor: Colors.black),
      home: testabc(),
    );
  }
}

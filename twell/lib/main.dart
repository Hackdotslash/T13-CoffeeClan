import 'package:flutter/material.dart';
import 'package:twell/pages/scanner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twell',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ScannerPage(),
    );
  }
}
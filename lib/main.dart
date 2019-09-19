import 'package:flutter/material.dart';

import './homepage.dart';
import './intropage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Job',
      theme: ThemeData(),
      home: HomePage(),
      routes: {
        '/a': (context) => APage(),
      },
    );
  }
}

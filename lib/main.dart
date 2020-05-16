import 'package:flutter/material.dart';

import 'loginScreens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Funk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(
        backgroundImage: AssetImage('assets/full-bloom.png'),
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    );
  }
}

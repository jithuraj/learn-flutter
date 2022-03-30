import 'package:flutter/material.dart';
import 'package:myapp/home_screen.dart';
import 'package:myapp/screen_two.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
      routes: {
        'screen1':(ctx) => Screen1(),
        'screen2':(ctx) => Screen2(),
      }
    );
  }
}

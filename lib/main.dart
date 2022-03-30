
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen_home.dart';

void main() => runApp(myApp());


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ScreenHome(),
    );
  }
}


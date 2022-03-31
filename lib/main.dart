import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        'home': (ctx) => Home(),
        'screen_2':(ctx)=>Screen2(),
      },

    );
  }
}



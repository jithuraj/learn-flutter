import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/screen_two.dart';

class myHome extends StatefulWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
              return ScreenTwo();
            }
            ));
          },
          child: Text("go to screen2",
          style: TextStyle(
            fontSize: 20,
          ),
          ),
        ),
      ),
    );
  }
}

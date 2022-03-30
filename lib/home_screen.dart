import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/screen_two.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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

            //material page route example

            // Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
            //   return Screen2();
            // }
            // ));

            Navigator.of(context).pushNamed('screen2');
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

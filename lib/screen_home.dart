import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  int _counter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Text(_counter.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
          _counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

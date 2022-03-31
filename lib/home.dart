import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myapp/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    getSavedData(context);
    return Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: _textController,
            ),
            ElevatedButton(onPressed: () {
              SaveDataToStorage();
            }, child: Text('Save value')),
          ],
        ));
  }


  Future<void> SaveDataToStorage() async {
    // print(_textController.text);

    final _sharedPrefence = await SharedPreferences.getInstance();
    await _sharedPrefence.setString("saved_value", _textController.text);
  }


  Future<void> getSavedData(BuildContext context) async {
    final _sharedPreference = await SharedPreferences.getInstance();

    final _savedValue = _sharedPreference.getString("saved_value");
    if (_savedValue != null) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Screen2()));
    } else {

    }
  }
}

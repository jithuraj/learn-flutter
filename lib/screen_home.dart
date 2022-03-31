import 'package:flutter/material.dart';
import 'package:myapp/screen_login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
          child: Column(
        children: [
          Text('Welcome to ootty nice to meet you'),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
          }, child: Text('Logout'))
        ],
      )),
    );
  }
}

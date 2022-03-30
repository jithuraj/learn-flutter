import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ElevatedButton(
        child: Text("Go back"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

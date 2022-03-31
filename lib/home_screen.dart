import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snack bar'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              child: Text('hai'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:
                  Row(
                    children: [
                      Text('hiaiii'),
                      ElevatedButton(onPressed: (){

                      }, child: Text('clickkkk'))
                    ],
                  )
                  ),
                );
              })
        ],
      ),
    );
  }
}

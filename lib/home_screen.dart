import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snack bar'),
      ),
      body: ElevatedButton(
        onPressed: (){
         showDialog(context: context, builder: (ctx)=>showAlertDialog(context));
        },
        child: Text('click me'),
      ),
    );
  }

  Widget showAlertDialog(BuildContext context){

   return AlertDialog(
      title: Text('Accept?'),
      content: Text('would you like to accept this proposal'),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text('Yes')),
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text('No')),
      ],
    );

  }


}

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isErrorMessageVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('snack bar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => showAlertDialog(context));
              },
              child: Text('alert dialog'),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: (){
                setState(() {
                  _isErrorMessageVisible ? _isErrorMessageVisible=false : _isErrorMessageVisible=true;
                });
                },
              child: Text('simple dialog'),
              ),
            ),


          Visibility(
            visible: _isErrorMessageVisible,
            child: Text('soemthing went wrong',
            style: TextStyle(
              color: Colors.red,
            ),
            ),
          )
          // SizedBox(
          //   height: 10,
          // )
        ],
      ),
    );
  }

  // Widget showSimpleDialog(BuildContext context){
  Widget showAlertDialog(BuildContext context) {
    return AlertDialog(
      title: Text('Accept?'),
      content: Text('would you like to accept this proposal'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Yes')),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('No')),
      ],
    );
  }
}

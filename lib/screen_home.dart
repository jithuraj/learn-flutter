import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(child: Text("Hai")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Future<void> showBottomSheet(BuildContext context) async {
  showModalBottomSheet(context: context, builder: (context1){
    return Container(
      width: double.infinity,
      height: 500,
      color: Colors.orange,

      child: ListView(
        children: [
          Text("title"),
          TextButton(onPressed: (){
            Navigator.pop(context1);
          }, child: Text("close"))
        ],
      ),
    );
  });
}

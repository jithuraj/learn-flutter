import 'package:flutter/material.dart';
import 'package:myapp/screen_home.dart';
import 'package:myapp/screen_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    splashTimer(context);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // getLoginState(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('jihhu.io'),
      ),
      body: Text('Please wait...'),
    );
  }
}


Future<void> getLoginState(BuildContext context) async {
  final _sharedPreferences = await SharedPreferences.getInstance();
  final username= _sharedPreferences.getString('username');
  final password= _sharedPreferences.getString('password');

  if(username==password && username!=null){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomeScreen()));
  }else {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
}

Future<void> splashTimer(BuildContext context)async{
  await Future.delayed(Duration(seconds: 3));
  getLoginState(context);
}

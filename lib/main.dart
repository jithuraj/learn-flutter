
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screen_home.dart';
import 'package:myapp/screen_login.dart';
import 'package:myapp/screen_splash.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        'splash_screen': (context) => SplashScreen(),
        'home_screen':(context)=> HomeScreen(),
        'login_screen':(context)=>LoginScreen(),
      }
    );
  }
}

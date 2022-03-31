import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to continue'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter username'),
                controller: _usernameFieldController,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Enter password'),
                controller: _passwordFieldController,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: () {
                    saveUserData(context);
                  }, child: Text('Sign up')))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveUserData(BuildContext context) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString('username', _usernameFieldController.text);
    _sharedPreferences.setString('password', _passwordFieldController.text);

    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
  }
}

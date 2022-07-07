import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}):super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login System"),
      ),
      body: Text("Login"),
    );
  }
  }
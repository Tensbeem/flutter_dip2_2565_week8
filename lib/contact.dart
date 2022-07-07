import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget{
  const ContactPage({Key? key}):super(key: key);

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact me"),
      ),
      body: Text("Contact"),
    );
  }
}
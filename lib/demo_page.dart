import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  DemoPage({required this.email, required this.password});

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Text('Email : $email'),
          Text('Password : $password'),
        ],
      ),
    );
  }
}

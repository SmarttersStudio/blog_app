import 'package:blog_app/counter_page.dart';
import 'package:blog_app/demo_page.dart';
import 'package:blog_app/home_page.dart';
import 'package:blog_app/intro_page.dart';
import 'package:blog_app/login_page.dart';
import 'package:blog_app/singup_page.dart';
import 'package:blog_app/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

import 'package:blog_app/home/home_widget.dart';
import 'package:blog_app/home/profile_widget.dart';
import 'package:blog_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Feed'),
        centerTitle: true,
        elevation: 20,
        actions: [
          IconButton(
              onPressed: () async {
                var pref = await SharedPreferences.getInstance();
                await pref.remove('login');
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              icon: Icon(Icons.power_settings_new))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow,
      ),
      body:
          Container(child: selectedIndex == 0 ? HomeWidget() : ProfileWidget()),
    );
  }
}

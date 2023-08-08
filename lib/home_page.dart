import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 20,
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Hii'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('Hello'), Text('World')],
          ),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text('click')),
        ],
      )),
    );
  }
}

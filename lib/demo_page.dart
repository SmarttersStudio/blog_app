import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  DemoPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Catch me if you can',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 100,
            ),
            AnimatedAlign(
                duration: Duration(microseconds: 200),
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onHover: (hovered) {
                    if (hovered) {}
                  },
                  child: Text(
                    'Hover',
                    style: TextStyle(fontSize: 30),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

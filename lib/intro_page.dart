import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 200,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Chào! Chào mừng',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam egestas rhoncus lectus rhoncus, tempor. ',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Đăng nhập'),
                ],
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tạo một tài khoản'),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

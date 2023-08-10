import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.blue[50],
      child: Stack(
        children: [
          Positioned(
            top: (height - 150) / 2 -
                kToolbarHeight -
                kBottomNavigationBarHeight -
                32,
            right: (width / 2) - 125 - 32,
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  height: 150,
                  width: 250,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "name",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Guru Prasad Mohapatra",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Email",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "guru@mail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 12),
                        Text(
                          "Phone",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "8249035377",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: (height - 150) / 2 -
                kToolbarHeight -
                kBottomNavigationBarHeight -
                62,
            left: (width / 2) - 30,
            child: CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}

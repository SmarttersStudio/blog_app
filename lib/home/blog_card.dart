import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  BlogCard(
      {required this.name,
      required this.title,
      required this.description,
      required this.timeStamp});

  String name, title, description, timeStamp;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Text(description),
            SizedBox(
              height: 12,
            ),
            Text(
              timeStamp,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:blog_app/home/blog_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  Future<Response> getAllBLogs() {
    var dio = Dio();
    return dio
        .get('http://148.72.158.178/~nandigho/blog/getAllPosts.php?id=288');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getAllBLogs(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var jsonResponse = jsonDecode(snapshot.data!.data);

            return RefreshIndicator(
              onRefresh: () async {},
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return BlogCard(
                    name: jsonResponse[index]['name'],
                    title: jsonResponse[index]['title'],
                    description: jsonResponse[index]['description'],
                    timeStamp: jsonResponse[index]['timestamp'],
                  );
                },
                itemCount: jsonResponse.length,
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  Future<Response> getProfile() async {
    var pref = await SharedPreferences.getInstance();
    var id = pref.getString('login');
    var dio = Dio();
    return dio.get('http://148.72.158.178/~nandigho/blog/profile.php?id=$id');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.blue[50],
      child: FutureBuilder<Response>(
        future: getProfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var jsonResponse = jsonDecode(snapshot.data!.data);

            return Stack(
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
                                jsonResponse['name'],
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
                                jsonResponse['email'],
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
                                jsonResponse['phone'],
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
                  child: const CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person),
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

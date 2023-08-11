import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({Key? key}) : super(key: key);

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  TextEditingController titleController = TextEditingController(),
      bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Your Post Hier"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add your title hier"),
          ),
          TextField(
            controller: bodyController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Describe your thoughts in a brief",
            ),
            minLines: 8,
            maxLines: 20,
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () async {
                String title = titleController.text;
                String body = bodyController.text;

                var prefs = await SharedPreferences.getInstance();
                final id = prefs.getString('login');

                Dio dio = Dio();
                dio
                    .get(
                        "http://148.72.158.178/~nandigho/blog/addPost.php?id=$id&title=$title&body=$body")
                    .then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Blog added sucessfully")));
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Add Post")],
              ))
        ],
      ),
    );
  }
}

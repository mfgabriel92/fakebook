import 'package:facebook_clone/screens/home/new_post.dart';
import 'package:facebook_clone/screens/home/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            NewPost(),
            Stories(),
          ],
        ),
      ),
    );
  }
}

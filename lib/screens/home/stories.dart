import 'package:facebook_clone/screens/home/widgets/storie.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 16.0),
      padding: EdgeInsets.symmetric(vertical: 16.0),
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 8.0),
          Storie(),
          Storie(),
          Storie(),
          Storie(),
          Storie(),
          Storie(),
          Storie(),
        ],
      ),
    );
  }
}

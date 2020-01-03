import 'package:fakebook/screens/home/widgets/round_picture.dart';
import 'package:fakebook/screens/home/widgets/share_action_button.dart';
import 'package:fakebook/screens/home/widgets/vertical_separator.dart';
import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey[300]),
                bottom: BorderSide(color: Colors.grey[300]),
              ),
            ),
            child: Row(
              children: <Widget>[
                RoundPicture(backgroundImage: NetworkImage('https://i.pravatar.cc/100')),
                SizedBox(width: 8.0),
                Expanded(
                  child: Container(
                    height: 32.0,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                        hintText: 'What\'s on your mind?',
                        hintStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              ShareActionButton(
                icon: Icons.live_tv,
                iconColor: Colors.redAccent,
                text: 'Live',
              ),
              VerticalSeparator(),
              ShareActionButton(
                icon: Icons.photo_album,
                iconColor: Colors.green,
                text: 'Photo',
              ),
              VerticalSeparator(),
              ShareActionButton(
                icon: Icons.location_on,
                iconColor: Colors.pink,
                text: 'Check In',
              ),
            ],
          )
        ],
      ),
    );
  }
}

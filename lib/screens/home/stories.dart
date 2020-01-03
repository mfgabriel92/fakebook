import 'package:fakebook/screens/home/widgets/story.dart';
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
          Story(
            backgroundImage: NetworkImage('https://i.pravatar.cc/100'),
            icon: Icon(
              Icons.add,
              color: Color(0xFF1778f2),
              size: 25.0,
            ),
            text: 'Add to Story',
          ),
          Story(
            backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            profilePicture: NetworkImage('https://i.pravatar.cc/100'),
            text: 'Your Story',
          ),
          Story(
            backgroundImage: NetworkImage('https://i.pravatar.cc/301'),
            profilePicture: NetworkImage('https://i.pravatar.cc/101'),
            text: 'Fulano de Tal',
          ),
          Story(
            backgroundImage: NetworkImage('https://i.pravatar.cc/302'),
            profilePicture: NetworkImage('https://i.pravatar.cc/102'),
            text: 'Fulano de Tal',
          ),
          Story(
            backgroundImage: NetworkImage('https://i.pravatar.cc/303'),
            profilePicture: NetworkImage('https://i.pravatar.cc/103'),
            text: 'Fulano de Tal',
          ),
          Story(
            backgroundImage: NetworkImage('https://i.pravatar.cc/304'),
            profilePicture: NetworkImage('https://i.pravatar.cc/104'),
            text: 'Fulano de Tal',
          ),
        ],
      ),
    );
  }
}

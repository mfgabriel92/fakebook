import 'package:flutter/material.dart';

class Storie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.0,
      margin: EdgeInsets.only(right: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(color: Colors.grey[300]),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://i.pravatar.cc/300'),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(
                    color: Color(0xFF1778f2),
                    width: 3.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/100'),
                  radius: 16.0,
                ),
              ),
              Text(
                'Fulano',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

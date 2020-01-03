import 'package:fakebook/screens/home/widgets/round_picture.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final Icon icon;
  final NetworkImage backgroundImage;
  final NetworkImage profilePicture;
  final String text;

  Story({
    this.icon,
    @required this.backgroundImage,
    this.profilePicture,
    @required this.text,
  });

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
          image: backgroundImage,
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
                    color: icon != null ? Colors.transparent : Color(0xFF1778f2),
                    width: 2.0,
                  ),
                ),
                child: icon != null
                    ? Container(
                        child: icon,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      )
                    : RoundPicture(backgroundImage: profilePicture),
              ),
              Text(
                text,
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

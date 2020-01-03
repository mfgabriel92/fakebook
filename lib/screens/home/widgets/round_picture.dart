import 'package:flutter/material.dart';

class RoundPicture extends StatelessWidget {
  final NetworkImage backgroundImage;

  RoundPicture({
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: backgroundImage,
    );
  }
}

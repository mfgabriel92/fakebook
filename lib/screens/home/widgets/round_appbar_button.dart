import 'package:flutter/material.dart';

class RoundAppbarButton extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  RoundAppbarButton({
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed ?? () {},
      child: Icon(
        icon,
        color: Colors.black87,
      ),
      constraints: BoxConstraints(
        minWidth: 38.0,
        minHeight: 38.0,
      ),
      fillColor: Colors.grey[100],
      elevation: 0.01,
      shape: CircleBorder(),
    );
  }
}

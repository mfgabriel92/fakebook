import 'package:flutter/material.dart';

class ShareActionButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  ShareActionButton({
    this.icon,
    this.iconColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: iconColor,
              size: 20.0,
            ),
            SizedBox(width: 8.0),
            Text(
              text,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

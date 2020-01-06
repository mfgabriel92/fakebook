import 'package:fakebook/screens/home/widgets/round_picture.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          User(),
          Content(),
          ReactionsAndShares(),
          Actions(),
        ],
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              RoundPicture(),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fulano de Tal',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Text(
                        '2 mins',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        '•',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(width: 2.0),
                      Icon(
                        Icons.public,
                        size: 14,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network('https://i.picsum.photos/id/476/800/500.jpg'),
    );
  }
}

class ReactionsAndShares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(''),
          Text(
            '8.2M shares',
            style: TextStyle(fontSize: 13.0, color: Colors.grey[900]),
          ),
        ],
      ),
    );
  }
}

class Actions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey[300]),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Like',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.comment,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Comment',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.share,
                    color: Colors.grey[600],
                    size: 20,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    'Share',
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

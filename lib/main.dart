import 'package:fakebook/screens/home/home.dart';
import 'package:fakebook/screens/home/widgets/round_appbar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(FacebookClone());
}

class FacebookClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          textTheme: TextTheme(
            title: TextStyle(
              color: Color(0xFF1778f2),
              fontFamily: 'Klavika',
              fontSize: 42,
            ),
          ),
          color: Colors.white,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Color(0xFF1778f2),
          unselectedLabelColor: Colors.black87,
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFF1778f2),
                width: 2.0,
              ),
            ),
          ),
        ),
        scaffoldBackgroundColor: Color(0xFFd0d0d0),
      ),
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text('fakebook'),
            titleSpacing: 8.0,
            actions: <Widget>[
              RoundAppbarButton(icon: Icons.search),
              RoundAppbarButton(icon: Icons.message)
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.group)),
                Tab(icon: Icon(Icons.play_circle_outline)),
                Tab(icon: Icon(Icons.face)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.format_list_bulleted)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Home(),
              Center(child: Text('Foo')),
              Center(child: Text('Foo')),
              Center(child: Text('Foo')),
              Center(child: Text('Foo')),
              Center(child: Text('Foo')),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:droidconke2020_flutter/screens/about_screen.dart';
import 'package:droidconke2020_flutter/screens/feed_screen.dart';
import 'package:droidconke2020_flutter/screens/home_screen.dart';
import 'package:droidconke2020_flutter/screens/sessions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        activeColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("Feed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text("Sessions"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text("About"),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return HomeScreen();
          case 1:
            return FeedScreen();
          case 2:
            return SessionsScreen();
          case 3:
            return AboutScreen();
          default:
            return HomeScreen();
        }
      },
    );
  }
}

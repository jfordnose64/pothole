import 'package:flutter/material.dart';
import 'package:pothole/Pages/account.dart';
import 'package:pothole/first_page.dart';
import 'package:pothole/Pages/map.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [FirstPage(), Map(), Account()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.map), title: new Text('Map')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Account'))
        ],
      ),
    );
  }
}

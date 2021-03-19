import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'DemoList.dart';
import 'Quiz.dart';
import 'Favorites.dart';
import 'Settings.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Home(),
    DemoList(),
    Quiz(),
    Favorites(),
    Settings(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            backgroundColor: Colors.blueGrey[900],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.av_timer,
              color: Colors.green,
            ),
            backgroundColor: Colors.blueGrey[900],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart,
              color: Colors.green,
            ),
            backgroundColor: Colors.blueGrey[900],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.green,
            ),
            backgroundColor: Colors.blueGrey[900],
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.green,
            ),
            backgroundColor: Colors.blueGrey[900],
            label: '',
          ),
        ],
      ),
    );
  }
}

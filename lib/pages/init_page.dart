import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:mi_gym/pages/exercices_page.dart';
import 'package:mi_gym/pages/home_page.dart';

class InitPage extends StatefulWidget {
  InitPage({Key key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _selectedIndex = 1;

  final List<Widget> _widgetOptions = <Widget>[
    Center(),
    HomePage(),
    ExercicesPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(
            Icons.library_books,
            size: 30,
            color: Colors.black87,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black87,
          ),
          Icon(
            Icons.fitness_center,
            size: 30,
            color: Colors.black87,
          ),
        ],
        onTap: (index) => _onItemTapped(index),
      ),
    );
  }
}

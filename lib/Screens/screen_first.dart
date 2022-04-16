import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';
import 'package:w1/Screens/list_screen.dart';
import 'package:w1/Screens/home_screen.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({Key? key}) : super(key: key);

  @override
  State<ScreenFirst> createState() => _ScreenFirstState();
}

class _ScreenFirstState extends State<ScreenFirst> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    HomeScreen(),
    ListScreen(),
    Container(
      color: Colors.blue,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: kScaffoldColor,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kDarkGreen,
        currentIndex: _selectedIndex,
        onTap: (value) {
          _onItemTapped(value);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined), label: 'Lists'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    ));
  }
}

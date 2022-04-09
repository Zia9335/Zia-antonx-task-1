import 'package:flutter/material.dart';
import 'package:w1/Components/constants.dart';
import 'package:w1/Screens/list_screen.dart';
import 'package:w1/Screens/home_screen0.dart';
class NewScreenHome extends StatefulWidget {
  const NewScreenHome({Key? key}) : super(key: key);

  @override
  State<NewScreenHome> createState() => _NewScreenHomeState();
}

class _NewScreenHomeState extends State<NewScreenHome> {
  @override
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    HomeScreen0(),
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

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: darkGreen,
        currentIndex: _selectedIndex,
        onTap: (value){_onItemTapped(value);},
        items: const  <BottomNavigationBarItem> [
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Lists'
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    ));
  }
}

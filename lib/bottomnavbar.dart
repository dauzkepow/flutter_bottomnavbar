import 'package:bottom_navigation_bar/homepage.dart';
import 'package:bottom_navigation_bar/searchpage.dart';
import 'package:bottom_navigation_bar/settingpage.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  //List halaman pada bottomnavigation
  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    SettingPage(),
  ];

  //rebuild _currentIndex
  void onTabTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Example'),
      ),
      //kembalikan variabel _children dalam bentuk widget
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        /*
        onTap: (value) {
          print('Nilai $value');
          onTabTapped(value);
        },
        */
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

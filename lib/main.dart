import 'package:bottom_navigation_bar/bottomnavbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Bottom Navigation Example',
      home: BottomNavBar(),
    );
  }
}

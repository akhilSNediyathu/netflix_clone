import 'package:flutter/material.dart';

class BottomNavwidget extends StatelessWidget {
  const BottomNavwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'New & '),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home')
      ]
      );
  }
}
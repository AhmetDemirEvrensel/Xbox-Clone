import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 28,
      items: [
        BottomNavigationBarItem(
            backgroundColor: Colors.grey[900],
            icon: const Padding(
              padding: EdgeInsets.only(top: 13, right: 40),
              child: Icon(Icons.home),
            ),
            label: ''),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: 50),
              child: Icon(Icons.search),
            ),
            label: ''),
        const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.menu_book_outlined),
            ),
            label: ''),
        const BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined), label: ''),
      ],
    );
  }
}

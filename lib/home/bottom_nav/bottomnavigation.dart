import 'package:flutter/material.dart';
import 'package:ilovestories/home/homepage.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      ),
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.handshake_rounded),
          label: 'Treasurers',
        ),
      ],
    );
  }
}

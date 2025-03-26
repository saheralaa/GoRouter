import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.child});
  final StatefulNavigationShell child;
  @override
  Widget build(BuildContext context) {
    int currentIndex = child.currentIndex;
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: child.goBranch,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Menu',
          ),
        ],
      ),
      body: child,
    );
  }
}

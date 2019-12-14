import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidgetState createState() =>
      BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _tabIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: const Icon(Icons.library_books),
        title: const Text('ライブラリ'),
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.timeline),
        title: const Text('タイムライン'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      currentIndex: _tabIndex,
      items: buildBottomNavBarItems(),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _tabIndex = index;
    });
  }
}

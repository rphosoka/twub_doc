import 'package:flutter/material.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({
    Key key,
  }) : super(key: key);

  PageWidgetState createState() => PageWidgetState();
}

class PageWidgetState extends State<PageWidget> {
  PageController _pageController;
  int _pageIndex = 0;

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
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hoge'),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[Text('hoge'), Text('hogehoge')],
        onPageChanged: (index) {
          pageChanged(index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _pageIndex,
        items: buildBottomNavBarItems(),
      ),
    );
  }

  void pageChanged(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  void _onTabTapped(int index) {
    setState(() {
      _pageIndex = index;
      _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}

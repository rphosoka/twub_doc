import 'package:flutter/material.dart';

class PageWidget extends StatefulWidget {
  final Widget child;
  final int pageIndex;

  const PageWidget({
    Key key,
    @required this.child,
    @required this.pageIndex,
  }) : super(key: key);

  PageWidgetState createState() => PageWidgetState();
}

class PageWidgetState extends State<PageWidget> {
  PageController _pageController;

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
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Text('hoge'),
          Text('hogehoge')
        ],
      ),
    );
  }

  void changePage(int pageIndex) {
    setState(() {
      _pageController.animateToPage(pageIndex, duration: null, curve: null);
    });
  }
}


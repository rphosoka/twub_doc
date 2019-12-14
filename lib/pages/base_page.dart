import 'package:flutter/material.dart';

import 'package:twub_doc/widgets/page_widget.dart';
import 'package:twub_doc/widgets/bottom_navigation_bar_widget.dart';

class BasePage extends StatelessWidget {
  final _key = GlobalKey<PageWidgetState>();

  @override
  Widget build(BuildContext context) {
    int hoge = 0;

    return Scaffold(
      body: Center(
        child: PageWidget(
          key: _key,
        ),
      ),
    );
  }
}

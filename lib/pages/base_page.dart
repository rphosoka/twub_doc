import 'package:flutter/material.dart';

import 'package:twub_doc/widgets/page_widget.dart';
import 'package:twub_doc/widgets/bottom_navigation_bar_widget.dart';

class BasePage extends StatelessWidget {
  final _key = GlobalKey<PageWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 各ページからタイトルテキストを取得する
      appBar: AppBar(
        title: const Text('TwubDoc'),
      ),
      body: Center(
        child: PageWidget(
          key: _key,
          pageIndex: 1,
          child: Column(
            children: <Widget>[
              Text('fuga'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

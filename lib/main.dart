import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

import 'package:twub_doc/pages/base_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TwubDoc',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen.navigate(
        name: 'assets/twub_doc.flr',
        next: (context) => BasePage(),
        until: () => Future.delayed(Duration(seconds: 3)),
        startAnimation: 'splash',
        backgroundColor: const Color(0xffffffff),
      ),
    );
  }
}

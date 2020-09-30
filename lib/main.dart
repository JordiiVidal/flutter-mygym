import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:mi_gym/pages/exercices_page.dart';
import 'package:mi_gym/pages/home_page.dart';
import 'package:mi_gym/pages/init_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //STATUS BAR
    _customStatusBar();

    return MaterialApp(
      title: 'MiGYM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'stack',
      routes: {
        '/': (_) => InitPage(),
      },
    );
  }

  void _customStatusBar() {
    FlutterStatusbarcolor.setStatusBarColor(Color(0xfff3f3f3));
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  }
}

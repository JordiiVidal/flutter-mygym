import 'package:flutter/material.dart';
import 'package:mi_gym/pages/exercice_page.dart';
import 'package:mi_gym/pages/init_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //STATUS BAR

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
        '/exercice': (_) => ExercicePage(),
      },
    );
  }
}

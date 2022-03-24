import 'dart:html';
import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dalam Loka Museum',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      //home: const DetailScreen(),
      home: MainScreen(),
    );
  }
}

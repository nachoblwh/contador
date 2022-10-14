import 'dart:html';

import 'package:contador/screens/listview1_screen.dart';
import 'package:contador/screens/listview2_screen.dart';
import 'package:contador/screens/card_screen.dart';
import 'package:contador/screens/alert_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const CardScreen(),
        routes: {
          'listview1': (BuildContext context) => const ListView1Screen(),
          'listview2': (BuildContext context) => const Listview2Screen(),
          'alert': (BuildContext context) => const AlertScreen(),
          'card': (BuildContext context) => const CardScreen(),
        });
  }
}

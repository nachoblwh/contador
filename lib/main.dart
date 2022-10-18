import 'dart:html';

import 'package:contador/router/app_routes.dart';
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
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.indigo,
          appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 0)),
    );
  }
}

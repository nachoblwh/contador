import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        elevation: 0,
      ),
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[Text("HomeScreen"), Text("10")],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hola mundo");
        },
        elevation: 10.0,
        child: Column(
          children: const <Widget>[Icon(Icons.add), Icon(Icons.remove)],
        ),
      ),
    );
  }
}

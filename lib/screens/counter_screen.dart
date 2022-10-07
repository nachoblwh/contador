import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CounterScreen",
          style: fontSize30,
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("HomeScreen"),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter++;

              setState(() {});
            },
            elevation: 10.0,
            child: Column(
              children: const <Widget>[Icon(Icons.add), Icon(Icons.remove)],
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              counter++;

              setState(() {});
            },
            elevation: 10.0,
            child: Column(
              children: const <Widget>[Icon(Icons.add), Icon(Icons.remove)],
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              counter++;

              setState(() {});
            },
            elevation: 10.0,
            child: Column(
              children: const <Widget>[Icon(Icons.add), Icon(Icons.remove)],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActions(increaseFn: increase),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: null,
          elevation: 10.0,
          child: Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: null,
          elevation: 10.0,
          child: Icon(Icons.ad_units),
        ),
        FloatingActionButton(
          onPressed: increaseFn(),
          elevation: 10.0,
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: null,
          elevation: 10.0,
          child: const Icon(Icons.autorenew),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CounterStateFull extends StatefulWidget {
  const CounterStateFull({Key? key}) : super(key: key);

  @override
  State<CounterStateFull> createState() => _CounterStateFullState();
}

class _CounterStateFullState extends State<CounterStateFull> {

  int counter = 0;
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Statefull'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

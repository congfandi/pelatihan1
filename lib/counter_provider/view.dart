import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CounterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<CounterProvider>();
    final state = provider.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.increment();
        },
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
            Consumer<CounterProvider>(
              builder: (context, provider, child) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

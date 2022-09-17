import 'package:flutter/material.dart';
import 'package:pelatihan1/helpers/db_helper.dart';
import 'package:pelatihan1/models/Counter.dart';

class CounterSqfLite extends StatefulWidget {
  const CounterSqfLite({Key? key}) : super(key: key);

  @override
  State<CounterSqfLite> createState() => _CounterSqfLiteState();
}

class _CounterSqfLiteState extends State<CounterSqfLite> {
  List<Counter> counters = [];
  DBHelper dbHelper = DBHelper();
  int count = 0;

  getCounter() async {
    counters = await dbHelper.getCounters();
    setState(() {});
  }

  void _addCounter() async {
    count++;
    Counter counter = Counter(
      count: count,
      name: 'Counter $count',
    );
    await dbHelper.save(counter);
    getCounter();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterSqfLite'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addCounter();
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: (c, i) => ListTile(
          title: Text(counters[i].id.toString()),
        ),
        itemCount: counters.length,
      ),
    );
  }
}

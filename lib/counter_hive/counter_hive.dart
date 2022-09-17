import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pelatihan1/helpers/hive_helper.dart';
import 'package:pelatihan1/models/counter.dart';

class CounterHive extends StatefulWidget {
  const CounterHive({Key? key}) : super(key: key);

  @override
  State<CounterHive> createState() => _CounterHiveState();
}

class _CounterHiveState extends State<CounterHive> {
  List<Counter> counters = [];
  late Box<Counter> box;
  int count = 0;

  _getBox() async {
    box = await HiveHelper.boxCounter();
    counters = box.values.toList();
    setState(() {});
  }

  void _saveCounter() {
    count++;
    Counter counter = Counter(count: count, name: "fandi");
    box.add(counter).then((value){
      debugPrint("hide success $value");
    }).catchError((err){
      debugPrint("hive error $err");
    });
    _getBox();
    setState(() {});
  }

  @override
  void initState() {
    _getBox();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterHive'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _saveCounter),
      body: ListView.builder(
        itemBuilder: (c, i) => ListTile(
          title: Text(counters[i].count.toString() ?? ""),
        ),
        itemCount: counters.length,
      ),
    );
  }
}

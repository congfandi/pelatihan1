import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pelatihan1/helpers/api_helper.dart';
import 'package:pelatihan1/models/counter.dart';

class CounterHttp extends StatefulWidget {
  const CounterHttp({Key? key}) : super(key: key);

  @override
  State<CounterHttp> createState() => _CounterHttpState();
}

class _CounterHttpState extends State<CounterHttp> {
  List<Counter> counters = [];

  void _getCounter() {
    http.get(Uri.parse(ApiHelper.counter)).then(
      (value) {
        print(value.body);
      },
    );
  }

  @override
  void initState() {
    _getCounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterHttp'),
      ),
      body: const Center(
        child: Text('CounterHttp'),
      ),
    );
  }
}

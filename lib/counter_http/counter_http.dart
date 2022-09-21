import 'package:flutter/material.dart';
import 'package:pelatihan1/helpers/api_helper.dart';
import 'package:pelatihan1/models/base_response.dart';
import 'package:pelatihan1/models/counter.dart';

import 'api_client.dart';

class CounterHttp extends StatefulWidget {
  const CounterHttp({Key? key}) : super(key: key);

  @override
  State<CounterHttp> createState() => _CounterHttpState();
}

class _CounterHttpState extends State<CounterHttp> {
  List<Counter> counters = [];
  var client = ApiClient();

  void _getCounter() async {
    var rest = await client.get(Uri.parse(ApiHelper.counter));
    if (rest.statusCode == 200) {
      setState(() {
        BaseResponse baseResponse = BaseResponse.fromJson(rest.body);
        counters = baseResponse.data ?? [];
      });
    }
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
      body: ListView.builder(
        itemCount: counters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(counters[index].name ?? ''),
            subtitle: Text(counters[index].count.toString()),
          );
        },
      ),
    );
  }
}

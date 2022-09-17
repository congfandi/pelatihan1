import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pelatihan1/helpers/pref_helper.dart';

class CounterFirebase extends StatefulWidget {
  const CounterFirebase({Key? key}) : super(key: key);

  @override
  State<CounterFirebase> createState() => _CounterFirebaseState();
}

class _CounterFirebaseState extends State<CounterFirebase> {
  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference? counterRef;
  int counter = 0;

  @override
  void initState() {
    database.setPersistenceEnabled(true);
    database.setLoggingEnabled(true);
    database.ref().keepSynced(true);
    database.databaseURL =
        'https://pelatihan-pt-default-rtdb.asia-southeast1.firebasedatabase.app';
    counterRef = database.ref("counter").child("data");
    databaseGet();
    debugPrint("CounterPref: ${PrefHelper.getInt("counter")}");
    super.initState();
  }

  databaseGet() {
    counterRef?.once().then((DatabaseEvent snapshot) {
      print('Data : ${snapshot.snapshot.value}');
    });

    counterRef?.onValue.listen((event) {
      print('Data : ${event.snapshot.value}');
    });
  }

  void _counterIncrement() {
    counter++;
    PrefHelper.setInt("counter", counter);
    counterRef?.set(counter).then((value) {
      debugPrint("CounterPref: ${PrefHelper.getInt("counter")}");
      debugPrint("Counter Updated");
    }).catchError((err) {
      debugPrint("Error: $err");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterFirebase'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterIncrement();
        },
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text(
          'This is the CounterFirebase widget',
        ),
      ),
    );
  }
}

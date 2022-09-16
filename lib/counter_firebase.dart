import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

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
    counterRef = database.ref("counter").child("data");
    super.initState();
  }

  void _counterIncrement() {
    counter++;
    counterRef?.set(counter).then((value){
      debugPrint("Counter Updated");
    }).catchError((err){
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

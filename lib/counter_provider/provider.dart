import 'package:flutter/material.dart';

import 'state.dart';

class CounterProvider extends ChangeNotifier {
  final state = CounterState();
  void increment() {
    state.counter++;
    notifyListeners();
  }
}

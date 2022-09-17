import 'package:pelatihan1/models/counter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:io' as io;

class HiveHelper {
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CounterAdapter());
  }

  static Future<Box<Counter>> boxCounter() async {
    return await Hive.openBox<Counter>("counter");
  }
}

import 'package:pelatihan1/models/Counter.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

class DBHelper {
  static Database? _db;
  static const String ID = 'id';
  static const String NAME = 'name';
  static const String COUNT = 'count';
  static const String TABLE = 'Counter';
  static const String DB_NAME = 'counter.db';

  Future<Database> get db async {
    return _db ?? await initDb();
  }

  Future<Database> initDb() async {
    String path = await getDatabasesPath() + DB_NAME;
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db
        .execute("CREATE TABLE $TABLE ($ID INTEGER PRIMARY KEY, $NAME TEXT, $COUNT INTEGER)");
  }

  Future<Counter> save(Counter counter) async {
    var dbClient = await db;
    counter.id = await dbClient.insert(TABLE, counter.toJson());
    return counter;
  }

  Future<List<Counter>> getCounters() async {
    var dbClient = await db;
    List<Map> maps = await dbClient.query(TABLE, columns: [ID, NAME]);
    List<Counter> counters = [];
    if (maps.isNotEmpty) {
      for (int i = 0; i < maps.length; i++) {
        counters.add(Counter.fromJson(maps[i]));
      }
    }
    return counters;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient.delete(TABLE, where: '$ID = ?', whereArgs: [id]);
  }

  Future<int> update(Counter counter) async {
    var dbClient = await db;
    return await dbClient
        .update(TABLE, counter.toJson(), where: '$ID = ?', whereArgs: [counter.id]);
  }

  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}

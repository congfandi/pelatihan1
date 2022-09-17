
import 'package:hive/hive.dart';

part 'counter.g.dart';
@HiveType(typeId: 1)
class Counter {
  Counter({
    this.id,
    this.name,
    this.count,
  });

  Counter.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    count = json['count'];
  }

  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['count'] = count;
    return map;
  }
}

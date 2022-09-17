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

  int? id;
  String? name;
  int? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['count'] = count;
    return map;
  }
}

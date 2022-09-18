import 'package:pelatihan1/models/counter.dart';

class BaseResponse {
  BaseResponse({
      this.status, 
      this.data,});

  BaseResponse.fromJson(dynamic json) {
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Counter.fromJson(v));
      });
    }
  }
  String? status;
  List<Counter>? data;
BaseResponse copyWith({  String? status,
  List<Counter>? data,
}) => BaseResponse(  status: status ?? this.status,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}
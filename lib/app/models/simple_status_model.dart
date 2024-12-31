import 'dart:convert';

/// status : false
/// message : "Item not found"

SimpleStatusModel simpleStatusModelFromJson(String str) =>
    SimpleStatusModel.fromJson(json.decode(str));

String simpleStatusModelToJson(SimpleStatusModel data) =>
    json.encode(data.toJson());

class SimpleStatusModel {
  SimpleStatusModel({
    this.status,
    this.message,
  });

  SimpleStatusModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
  }

  bool? status;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    return map;
  }
}

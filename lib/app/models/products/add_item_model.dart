import 'dart:convert';

/// status : true
/// message : "Item created successfully"
/// data : {"name":"Item 101","description":"Description of Item 101","price":1000,"_id":"6773837d387761beb6517e7b","createdAt":"2024-12-31T05:39:09.552Z","__v":0}

AddItemModel addItemModelFromJson(String str) =>
    AddItemModel.fromJson(json.decode(str));

String addItemModelToJson(AddItemModel data) => json.encode(data.toJson());

class AddItemModel {
  AddItemModel({
    this.status,
    this.message,
    this.data,
  });

  AddItemModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? status;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

/// name : "Item 101"
/// description : "Description of Item 101"
/// price : 1000
/// _id : "6773837d387761beb6517e7b"
/// createdAt : "2024-12-31T05:39:09.552Z"
/// __v : 0

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.name,
    this.description,
    this.price,
    this.id,
    this.createdAt,
    this.v,
  });

  Data.fromJson(dynamic json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    id = json['_id'];
    createdAt = json['createdAt'];
    v = json['__v'];
  }

  String? name;
  String? description;
  num? price;
  String? id;
  String? createdAt;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['description'] = description;
    map['price'] = price;
    map['_id'] = id;
    map['createdAt'] = createdAt;
    map['__v'] = v;
    return map;
  }
}

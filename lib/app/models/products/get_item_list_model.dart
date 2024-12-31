import 'dart:convert';

/// status : true
/// message : "Items retrieved successfully"
/// data : [{"_id":"67721bba4936f75b111aaae7","name":"Item 8","description":"Lorem Ipsum is simply dummy text of the","price":2000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67721bba9936f75b111aaae7","name":"Item 8","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":2000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67721bba4936f75b111aaae9","name":"Item 11","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":2000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67721bba4936f71b111aaae7","name":"Item 6","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":2000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67721bba4936f75b111aaa34","name":"Item 40","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":2000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67721bba4936f75a111aaa34","name":"Item 1","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":2000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67721bba4936f759111aaa34","name":"Item 3","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":5000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0},{"_id":"67729bba4936f759111aaa34","name":"Item 6","description":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s","price":8000,"createdAt":"2024-12-30T04:04:10.285Z","__v":0}]

GetItemListModel getItemListModelFromJson(String str) =>
    GetItemListModel.fromJson(json.decode(str));

String getItemListModelToJson(GetItemListModel data) =>
    json.encode(data.toJson());

class GetItemListModel {
  GetItemListModel({
    this.status,
    this.message,
    this.data,
  });

  GetItemListModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  bool? status;
  String? message;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// _id : "67721bba4936f75b111aaae7"
/// name : "Item 8"
/// description : "Lorem Ipsum is simply dummy text of the"
/// price : 2000
/// createdAt : "2024-12-30T04:04:10.285Z"
/// __v : 0

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    this.id,
    this.name,
    this.description,
    this.price,
    this.createdAt,
    this.v,
  });

  Data.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    createdAt = json['createdAt'];
    v = json['__v'];
  }

  String? id;
  String? name;
  String? description;
  num? price;
  String? createdAt;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['price'] = price;
    map['createdAt'] = createdAt;
    map['__v'] = v;
    return map;
  }
}

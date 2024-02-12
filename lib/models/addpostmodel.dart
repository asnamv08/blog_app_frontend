// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  Userid userid;
  String post;
  DateTime posteddate;

  Posts({
    required this.userid,
    required this.post,
    required this.posteddate,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    userid: Userid.fromJson(json["userid"]),
    post: json["post"],
    posteddate: DateTime.parse(json["posteddate"]),
  );

  Map<String, dynamic> toJson() => {
    "userid": userid.toJson(),
    "post": post,
    "posteddate": posteddate.toIso8601String(),
  };
}

class Userid {
  String name;
  String age;
  String phone;
  String address;
  String pincode;

  Userid({
    required this.name,
    required this.age,
    required this.phone,
    required this.address,
    required this.pincode,
  });

  factory Userid.fromJson(Map<String, dynamic> json) => Userid(
    name: json["name"],
    age: json["age"],
    phone: json["phone"],
    address: json["address"],
    pincode: json["pincode"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "phone": phone,
    "address": address,
    "pincode": pincode,
  };
}

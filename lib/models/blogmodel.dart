// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String name;
  String age;
  String phone;
  String address;
  String pincode;
  String email;
  String password;

  Posts({
    required this.name,
    required this.age,
    required this.phone,
    required this.address,
    required this.pincode,
    required this.email,
    required this.password,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    name: json["name"],
    age: json["age"],
    phone: json["phone"],
    address: json["address"],
    pincode: json["pincode"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "phone": phone,
    "address": address,
    "pincode": pincode,
    "email": email,
    "password": password,
  };
}

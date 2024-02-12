import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:blogapp/models/blogmodel.dart';

class  BlogApiService{
  Future<dynamic>loginapi(
      String email,
      String password,
      ) async{
    var client=http.Client();
    var apiurl=Uri.parse("");
    var response=await client.post(apiurl,
      headers: <String,String>{
        "Content-Type":"application/json ; charset=UTF-8"
      },
        body:jsonEncode(<String,String>
        {
          "email": email,
          "password": password,
        })
    );
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }
  }
  Future<dynamic>senddata(
  String name,
  String age,
  String phone,
  String address,
  String pin,
  String email,
  String password,
  )async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://10.0.10.115:3001/api/blog/signin");

    var response = await client.post(apiUrl,
        headers: <String,String>{
          "Content-Type":"application/json ; charset=UTF-8"
        },
        body:jsonEncode(<String,String>
        {

          "name": name,
          "age": age,
          "phone": phone,
          "address": address,
          "pincode": pin,
          "email": email,
          "password": password,


        })

    );
    if(response.statusCode==200){
      return jsonDecode(response.body);

    }
    else{
      throw Exception("failed to send data");
    }


  }
  Future<List<Posts>> getPosts() async{
    var client =http.Client();
    var apiUrl=Uri.parse("http://10.0.10.115:3001/api/blog/view/");
    var response = await client.get(apiUrl);
    if(response.statusCode==200)
    {
      return postsFromJson(response.body);
    }
    else
    {
      return [];
    }

  }

}
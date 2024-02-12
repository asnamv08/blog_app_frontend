import 'package:blogapp/pages/signup.dart';
import 'package:blogapp/services/blogservice.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController getemail=new TextEditingController();
  TextEditingController getpassword=new TextEditingController();
  void sendvaluetoapi()async{
    final response=await BlogApiService().loginapi(getemail.text,getpassword.text);
    if (response["status"] == "success") {
      String userId=response["userdata"]["_id"].toString();
      SharedPreferences preferences=await SharedPreferences.getInstance();
      preferences.setString("userId", userId);
      print("Login Successfully"+userId);

    }
    else if (response["status"] == "invalid user") {
      print("invalid user");
    }
    else{
      print("Invalid Password");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: Column(children: [
        TextField(decoration: InputDecoration(labelText: ("Email Id"),border: OutlineInputBorder())),
        SizedBox(height: 10,),
        TextField(decoration: InputDecoration(labelText: ("Password"),border: OutlineInputBorder()),),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Login")),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>signup()));
        }, child: Text("New Users Click Here"))

      ],),),
    );
  }
}

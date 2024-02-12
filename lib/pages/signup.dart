import 'package:blogapp/services/blogservice.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController getname=new TextEditingController();
  TextEditingController getage=new TextEditingController();
  TextEditingController getphone=new TextEditingController();
  TextEditingController getaddress=new TextEditingController();
  TextEditingController getpincode=new TextEditingController();
  TextEditingController getemail=new TextEditingController();
  TextEditingController getpassword=new TextEditingController();
  void sendvaluetoapi()async{
    final response=await BlogApiService().senddata(getname.text,getage.text,getphone.text,getaddress.text,getpincode.text,getemail.text,getpassword.text);
    if (response["status"] == "success") {

      print("Successfully added");

    }
    else{
      print("error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Container(child: Column(children: [
            TextField(controller: getname,decoration: InputDecoration(labelText: ("Name"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(controller: getage,decoration: InputDecoration(labelText: ("Age"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(controller: getphone,decoration: InputDecoration(labelText: ("Phone"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(controller: getaddress,decoration: InputDecoration(labelText: ("Address"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(controller: getpincode,decoration: InputDecoration(labelText: ("Pincode"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(controller: getemail,decoration: InputDecoration(labelText: ("Email"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(controller: getpassword,decoration: InputDecoration(labelText: ("Password"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: sendvaluetoapi, child: Text("Register")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back To Menu"))

          ],)),
        )
    );
  }
}

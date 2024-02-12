import 'package:blogapp/pages/addpost.dart';
import 'package:flutter/material.dart';

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(child: Column(children: [
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>addpost()));}, child: Text("Add Post")),
          SizedBox(height: 10,),
          ElevatedButton(onPressed:(){}, child: Text("View Post")),
        ],),),
      ),
    );
  }
}

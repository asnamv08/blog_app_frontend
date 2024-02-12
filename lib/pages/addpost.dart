import 'package:flutter/material.dart';

class addpost extends StatefulWidget {
  const addpost({super.key});

  @override
  State<addpost> createState() => _addpostState();
}

class _addpostState extends State<addpost> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(child: Column(children: [
          TextField(decoration: InputDecoration(labelText: ("Add post"),border: OutlineInputBorder()),),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){}, child: Text("Add Post"))
        ],),),
      ),
    );
  }
}

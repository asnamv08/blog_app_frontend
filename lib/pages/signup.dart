import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: Container(child: Column(children: [
            TextField(decoration: InputDecoration(labelText: ("Name"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Age"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Phone"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Address"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(labelText: ("Pincode"),border: OutlineInputBorder()),),
            ElevatedButton(onPressed: (){}, child: Text("Register")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Back To Menu"))

          ],)),
        )
    );
  }
}

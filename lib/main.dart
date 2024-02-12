import 'package:blogapp/pages/login.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(homepage());
}
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

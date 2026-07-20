import 'package:flutter/material.dart';

void main(){
  runApp(todoapp());
}

class todoapp extends StatelessWidget {
  const todoapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      
      ))
    );
  }
}
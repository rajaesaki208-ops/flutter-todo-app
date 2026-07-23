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
      home:Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,
      color: Colors.black,
      size: 25,)),
      title: Text("My habits",
      style: TextStyle(color: Colors.black,
      fontSize: 25,
      fontWeight: FontWeight.bold),),
      actions: [IconButton(onPressed: (){},
      icon: Icon(Icons.search,color: Colors.black,
      size: 25,)),
      IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,
      size: 25,))]),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.start,children: [Text("Good morning",
      style: TextStyle(color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold))]),
      
         ]
        )
       ),
      )
    );
  }
}
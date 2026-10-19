import'package:flutter/material.dart';


void main(){
  runApp(myapp());
}


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

  TextEditingController textcontroller=TextEditingController();

  List<String> addlist=[];

  bool iscomplete=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(backgroundColor:Color.fromARGB(255, 4, 82, 218),
      title: Text("To-Do List",
      style: TextStyle(color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold),),
      actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings_outlined,
      color: Colors.white,
      size:25,fontWeight: FontWeight.bold,))],
      ),
      body: Column(children: [
      Row(children: [
      Expanded(child:Container(padding: EdgeInsets.all(10),
      height: 65,
      child: TextField(controller: textcontroller,
      decoration:
       InputDecoration(border: 
       OutlineInputBorder(borderRadius: BorderRadius.circular(10),
       borderSide:BorderSide.none ),
       hint: Text("Add a new task...",
       style: TextStyle(color: Colors.grey.shade700,
       fontSize: 15),),
       fillColor: const Color.fromARGB(255, 226, 226, 226),
       filled: true,),),)),

       MaterialButton(onPressed: (){
        setState(() {
         if(textcontroller.text.trim().isNotEmpty){
          addlist.add(textcontroller.text.trim()); 
         }
         else{

         }
          textcontroller.clear();
        });
        
       },
       color: Color.fromARGB(255, 4, 82, 218),
       height: 45,
       minWidth: 50,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
       child:Icon(Icons.add,size: 25,
       color: Colors.white,
       fontWeight: FontWeight.bold,) ,)],),

       Flexible(child:  ListView.builder(itemCount:addlist.length,
       itemBuilder: 
       (context,index){
        return  Card(elevation: 2,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
       color: Colors.white,
       child: Row(children: [
       IconButton(onPressed: (){
       setState(() {
        iscomplete=!iscomplete;
       });
       },
       icon: Icon(iscomplete
                    ?Icons.check_box
                    :Icons.check_box_outline_blank)),

       Expanded(child:Padding(padding: EdgeInsets.all(10),
       child: Text(addlist[index],
       style: TextStyle(color: Colors.black,
       fontSize: 18,
       fontWeight: FontWeight.w400)),), ),

       IconButton(onPressed: (){
       setState(() {
         addlist.removeAt(index);
       });
       },icon: Icon(Icons.delete_outline,
       color: Colors.red,
       size: 25,))],),);
       }), )
     
    
       ],),
 

      ),
    );
  }
}